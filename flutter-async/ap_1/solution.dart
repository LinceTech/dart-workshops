import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

const Color darkBlue = Color.fromARGB(255, 18, 32, 47);

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: darkBlue,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (_) => const App(),
        '/foto': (context) {
          final foto = ModalRoute.of(context)!.settings.arguments as Foto;
          return VerFoto(foto);
        },
      },
    );
  }
}

class Foto {
  Foto.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        titulo = json['title'],
        url = json['url'],
        thumbnailUrl = json['thumbnailUrl'];

  final int id;
  final String titulo;
  final String url;
  final String thumbnailUrl;
}

enum EstadoDaTela {
  carregando,
  carregado,
  erroDeCarregamento,
}

class App extends StatefulWidget {
  const App();

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  String? _mensagemDeErro;
  final _listaFotos = <Foto>[];
  var _situacao = EstadoDaTela.carregando;

  @override
  void initState() {
    _carregarLista();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final content = switch (_situacao) {
      EstadoDaTela.carregando => const TelaCarregando(),
      EstadoDaTela.carregado => ListaDeFotos(_listaFotos),
      EstadoDaTela.erroDeCarregamento => TelaComErro(_mensagemDeErro!),
    };

    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista de posts'),
      ),
      body: content,
    );
  }

  Future<void> _carregarLista() async {
    try {
      final response = await http.get(Uri.parse(
          'https://raw.githubusercontent.com/LinceTech/dart-workshops/main/flutter-async/ap_1/request.json'));
      if (response.statusCode == 200) {
        final jsonList = convert.jsonDecode(response.body);
        for (final json in jsonList) {
          _listaFotos.add(Foto.fromJson(json));
        }
        _situacao = EstadoDaTela.carregado;
      } else {
        _situacao = EstadoDaTela.erroDeCarregamento;
        _mensagemDeErro =
        "Erro na requisição http (cód.: ${response.statusCode})";
      }
    } catch (error, stack) {
      print('Erro: $error\n$stack');
      _situacao = EstadoDaTela.erroDeCarregamento;
      _mensagemDeErro = "Erro na requisição.\nCausa: $error";
    } finally {
      setState(() => {});
    }
  }
}

class TelaCarregando extends StatelessWidget {
  const TelaCarregando();

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }
}

class TelaComErro extends StatelessWidget {
  const TelaComErro(this.erro);

  final String erro;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Erro no carregamento: $erro'),
    );
  }
}

class ListaDeFotos extends StatelessWidget {
  const ListaDeFotos(this._listaFotos);

  final List<Foto> _listaFotos;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: _listaFotos.length,
      itemBuilder: (context, index) {
        return ListaItemFoto(_listaFotos[index]);
      },
    );
  }
}

class ListaItemFoto extends StatelessWidget {
  const ListaItemFoto(this.foto);

  final Foto foto;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(foto.titulo),
      onTap: () {
        Navigator.of(context).pushNamed('/foto', arguments: foto);
      },
      leading: AspectRatio(
        aspectRatio: 1,
        child: Image.network(
          foto.thumbnailUrl,
          fit: BoxFit.cover,
          errorBuilder: (context, object, trace) {
            return Text("Erro carregando imagem: $object");
          },
        ),
      ),
    );
  }
}

class VerFoto extends StatelessWidget {
  const VerFoto(this.foto);

  final Foto foto;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista de posts'),
      ),
      body: Center(
        child: Image.network(foto.url),
      ),
    );
  }
}
