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
      home: Scaffold(
        body: _Formulario(),
      ),
    );
  }
}

class _Formulario extends StatefulWidget {
  @override
  State<_Formulario> createState() => _FormularioState();
}

class _FormularioState extends State<_Formulario> {
  final _formState = GlobalKey<FormState>();
  final _nomeController = TextEditingController();
  final _idadeController = TextEditingController();

  var _inativo = false;

  int? _idadeSalva;
  String? _nomeSalvo;
  bool? _inativoSalvo;

  bool get _isFormularioSalvo {
    return _idadeSalva != null && _nomeSalvo != null && _inativoSalvo != null;
  }

  void _enviarFormulario() {
    if (_formState.currentState!.validate()) {
      setState(() {
        _nomeSalvo = _nomeController.text;
        _idadeSalva = int.tryParse(_idadeController.text) ?? 0;
        _inativoSalvo = _inativo;
      });
    } else {
      print("Existem erros no formulario");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Form(
        key: _formState,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextFormField(
              controller: _nomeController,
              keyboardType: TextInputType.text,
              decoration: const InputDecoration(
                label: Text("Nome"),
              ),
              validator: (value) {
                if (value?.isEmpty ?? true) {
                  return "Nome obrigatorio";
                }
                if (value!.length < 2) {
                  return "Nome precisa ter no minimo duas letras";
                }
                if (value.startsWith(RegExp(r'[^A-Z]'))) {
                  return "Nome precisa comecar com letra maiuscula";
                }
                return null;
              },
            ),
            TextFormField(
              controller: _idadeController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                label: Text("Idade"),
              ),
              validator: (value) {
                if (value?.isEmpty ?? true) {
                  return "Idade obrigatoria";
                }
                final idade = int.tryParse(_idadeController.text) ?? 0;
                if (idade < 18) {
                  return "Idade invalida";
                }
                return null;
              },
            ),
            Row(
              children: [
                Checkbox(
                  value: _inativo,
                  onChanged: (value) {
                    setState(() {
                      _inativo = value!;
                    });
                  },
                ),
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Text(_inativo ? "Inativo" : "Ativo"),
                ),
              ],
            ),
            ElevatedButton(
              child: const Text("Salvar"),
              onPressed: () {
                _enviarFormulario();
              },
            ),
            const Padding(
              padding: EdgeInsets.only(
                top: 16,
                left: 8,
                right: 8,
                bottom: 8,
              ),
              child: Text("Dados salvos"),
            ),
            if (_isFormularioSalvo)
              _DadosSalvos(
                idade: _idadeSalva!,
                nome: _nomeSalvo!,
                inativo: _inativoSalvo!,
              ),
          ],
        ),
      ),
    );
  }
}

class _DadosSalvos extends StatelessWidget {
  const _DadosSalvos({
    required this.idade,
    required this.nome,
    required this.inativo,
  });

  final int idade;
  final String nome;
  final bool inativo;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: inativo ? Colors.grey : Colors.green,
        borderRadius: const BorderRadius.all(Radius.circular(8)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text("Nome: $nome"),
          Text("Idade: $idade"),
          Text(inativo ? "Inativo" : "Ativo"),
        ],
      ),
    );
  }
}
