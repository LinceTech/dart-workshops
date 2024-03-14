import 'package:flutter/material.dart';
import 'dart:math';

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
        body: Center(
          child: MyWidget(),
        ),
      ),
    );
  }
}

class MyWidget extends StatefulWidget {
  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  final random = Random();

  var botaoCorreto = 0;
  var clicks = 0;
  var ganhou = false;
  var perdeu = false;

  // Esse método e chamado somente uma vez, ao iniciar o state
  @override
  void initState() {
    super.initState();

    // Escolher um número de 0 a 2 para identificar escolher o botao correto
    botaoCorreto = random.nextInt(3);
  }

  // Tratar a tentativa do usuário
  void tentativa(int opcao) {
    setState(() {
      // Verificar se a opcao escolhida esta correta
      if (opcao == botaoCorreto) {
        ganhou = true;
      } else {
        // Se estiver errada, incrementa o contador de clicks
        clicks++;
      }

      // Se a quantidade de clicks for maior ou igual a 2, o usuário perdeu
      if (clicks >= 2 && !ganhou) {
        perdeu = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    // Se o usuário ganhou, retorna a mensagem de sucesso com o fundo em verde
    if (ganhou) {
      return Container(
        color: Colors.green,
        child: const Text('Voce ganhou'),
      );
    }

    // Se o usuário perdeu, retorna a mensagem de fracasso com o fundo em vermelho
    if (perdeu) {
      return Container(
        color: Colors.red,
        child: const Text('Voce perdeu'),
      );
    }

    // Nesse momento o jogo ainda nao foi finalizado
    return Column(
      children: [
        ElevatedButton(
          child: const Text('A'),
          onPressed: () {
            tentativa(0);
          },
        ),
        ElevatedButton(
          child: const Text('B'),
          onPressed: () {
            tentativa(1);
          },
        ),
        ElevatedButton(
          child: const Text('C'),
          onPressed: () {
            tentativa(2);
          },
        ),
      ],
    );
  }
}
