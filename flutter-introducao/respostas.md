# Respostas

### 1 - Cores aleatórias

```dart
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
  var color = Colors.red;
  final random = Random();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Cor aleatória',
          style: Theme.of(context)
              .textTheme
              .headlineMedium!
              .copyWith(color: color),
        ),
        ElevatedButton(
          child: const Text('Sortear cor'),
          onPressed: () {
            setState(() {
              switch (random.nextInt(9)) {
                case 0:
                  print('Alterar cor para vermelho');
                  color = Colors.red;
                  break;
                case 1:
                  print('Alterar cor para verde');
                  color = Colors.green;
                  break;
                case 2:
                  print('Alterar cor para azul');
                  color = Colors.blue;
                  break;
                case 3:
                  print('Alterar cor para roxo');
                  color = Colors.purple;
                  break;
                case 4:
                  print('Alterar cor para laranja');
                  color = Colors.orange;
                  break;
                case 5:
                  print('Alterar cor para cinza azulado');
                  color = Colors.blueGrey;
                  break;
                case 6:
                  print('Alterar cor para roxo intenso');
                  color = Colors.deepPurple;
                  break;
                case 7:
                  print('Alterar cor para laranja intenso');
                  color = Colors.deepOrange;
                  break;
                case 8:
                  print('Alterar cor para ciano');
                  color = Colors.cyan;
                  break;
              }
            });
          },
        ),
      ],
    );
  }
}
```

___

### 2 - Opção aleatória

```dart
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

    // Escolher um número de 0 a 2 para identificar escolher o botão correto
    botaoCorreto = random.nextInt(3);
  }

  // Tratar a tentativa do usuário
  void tentativa(int opcao) {
    setState(() {
      // Verificar se a opção escolhida esta correta
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
    // Se o jogador ganhou, retorna a mensagem de sucesso com o fundo em verde
    if (ganhou) {
      return Container(
        color: Colors.green,
        child: const Text('Você ganhou'),
      );
    }

    // Se o jogador perdeu, retorna a mensagem de fracasso com o fundo em vermelho
    if (perdeu) {
      return Container(
        color: Colors.red,
        child: const Text('Você perdeu'),
      );
    }

    // Nesse momento o jogo ainda não foi finalizado
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
```

___

### 3 - Refatoração de código

```dart
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
      // Verificar se a opção escolhida esta correta
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
      // Escolher um número de 0 a 2 para identificar escolher o botão correto
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
        Text('Vitórias: $vitorias'),
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
```

___