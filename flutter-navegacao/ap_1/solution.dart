import 'package:flutter/material.dart';

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
        '/': (context) => const RotaInicial(),
        '/cor': (context) {
          return RotaCor(ModalRoute.of(context)!.settings.arguments as Color);
        },
      },
    );
  }
}

class ItensDaLista {
  const ItensDaLista(this.cor, this.texto);

  final Color cor;
  final String texto;
}

class RotaInicial extends StatelessWidget {
  const RotaInicial();

  final cores = const [
    ItensDaLista(Colors.red, "Vermelho"),
    ItensDaLista(Colors.green, "Verde"),
    ItensDaLista(Colors.blue, "Azul"),
    ItensDaLista(Colors.purple, "Roxo"),
    ItensDaLista(Colors.orange, "Laranja"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Selecione uma cor"),
      ),
      body: ListView.builder(
        itemCount: cores.length,
        itemBuilder: (context, index) {
          final item = cores[index];
          return CorItem(item.texto, item.cor);
        },
      ),
    );
  }
}

class RotaCor extends StatelessWidget {
  const RotaCor(this.color);

  final Color color;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cor selecionada"),
      ),
      body: Container(
        color: color,
      ),
    );
  }
}

class CorItem extends StatelessWidget {
  const CorItem(this.texto, this.cor);

  final Color cor;
  final String texto;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed('/cor', arguments: cor);
      },
      child: Container(
        color: cor,
        height: 48,
        child: Center(
          child: Text(texto),
        ),
      ),
    );
  }
}
