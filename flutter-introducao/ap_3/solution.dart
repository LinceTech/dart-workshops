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

enum EstadoDoJogo {
  emAndamento,
  ganhou,
  perdeu,
}

class MyWidget extends StatefulWidget {
  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  final random = Random();

  // Variáveis
  var vitorias = 0;
  var derrotas = 0;
  var botaoCorreto = 0;
  var clicks = 0;
  var estadoDoJogo = EstadoDoJogo.emAndamento;

  // Esse método e chamado somente uma vez, ao iniciar o state
  @override
  void initState() {
    super.initState();

    iniciarJogo();
  }

  // Tratar a tentativa do usuário
  void tentativa(int opcao) {
    setState(() {
      // Verificar se a opcao escolhida esta correta
      if (opcao == botaoCorreto) {
        estadoDoJogo = EstadoDoJogo.ganhou;
        vitorias++;
      } else {
        // Se estiver errada, incrementa o contador de clicks
        clicks++;
      }

      // Se a quantidade de clicks for maior ou igual a 2, o usuário perdeu
      if (clicks >= 2 && estadoDoJogo != EstadoDoJogo.ganhou) {
        estadoDoJogo = EstadoDoJogo.perdeu;
        derrotas++;
      }
    });
  }

  void iniciarJogo() {
    setState(() {
      // Escolher um número de 0 a 2 para identificar escolher o botao correto
      botaoCorreto = random.nextInt(3);

      // Limpar o contador de clicks
      clicks = 0;

      // Marcar jogo como em andamento
      estadoDoJogo = EstadoDoJogo.emAndamento;
    });
  }

  @override
  Widget build(BuildContext context) {
    return switch (estadoDoJogo) {
    // Se o usuário ganhou, retorna a mensagem de sucesso com o fundo em verde
      EstadoDoJogo.ganhou => GanhouJogo(iniciarJogo),

    // Se o usuário perdeu, retorna a mensagem de fracasso com o fundo em vermelho
      EstadoDoJogo.perdeu => PerdeuJogo(iniciarJogo),

    // Jogo ainda esta em andamento
      EstadoDoJogo.emAndamento => JogoEmAndamento(vitorias, derrotas, tentativa),
    };
  }
}

class PerdeuJogo extends StatelessWidget {
  const PerdeuJogo(this.reiniciar);

  // Essa função sera chamada no state para reiniciar o jogo
  final void Function() reiniciar;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: Column(children: [
        const Text('Você perdeu'),
        ElevatedButton(
          child: const Text('Jogar novamente'),
          onPressed: () {
            reiniciar();
          },
        ),
      ]),
    );
  }
}

class GanhouJogo extends StatelessWidget {
  const GanhouJogo(this.reiniciar);

  // Essa função sera chamada no state para reiniciar o jogo
  final void Function() reiniciar;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      child: Column(children: [
        const Text('Você ganhou'),
        ElevatedButton(
          child: const Text('Jogar novamente'),
          onPressed: () {
            reiniciar();
          },
        ),
      ]),
    );
  }
}

class JogoEmAndamento extends StatelessWidget {
  const JogoEmAndamento(
      this.vitorias,
      this.derrotas,
      this.tentativa,
  );

  // Numero de vitorias e derrotas sera fornecido pelo state
  final int vitorias;
  final int derrotas;

  // Essa função sera chamada no state quando usuário interagir com um dos botoes
  final void Function(int) tentativa;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Vitorias: $vitorias'),
        Text('Derrotas: $derrotas'),
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
