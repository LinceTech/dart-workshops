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
