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
        body: MyWidget(),
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

  var quadrado = true;
  var cor = Colors.red;

  String get textoBotao =>
      quadrado ? 'Mudar para circulo' : 'Mudar para quadrado';

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.all(8),
              child: ElevatedButton(
                child: Text(textoBotao),
                onPressed: () {
                  setState(() {
                    quadrado = !quadrado;
                  });
                },
              ),
            ),
            ElevatedButton(
              child: const Text('Cor aleatoria'),
              onPressed: () {
                setState(() {
                  switch (random.nextInt(5)) {
                    case 0:
                      print('Vermelho');
                      cor = Colors.red;
                      break;

                    case 1:
                      print('Roxo');
                      cor = Colors.purple;
                      break;

                    case 2:
                      print('Verde');
                      cor = Colors.green;
                      break;

                    case 3:
                      print('Amarelo');
                      cor = Colors.yellow;
                      break;

                    case 4:
                      print('Laranja');
                      cor = Colors.orange;
                      break;
                  }
                });
              },
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  shape: quadrado ? BoxShape.rectangle : BoxShape.circle,
                  color: cor,
                ),
                width: 50,
                height: 50,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
