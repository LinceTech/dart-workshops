# Respostas

### 1 - Retângulos coloridos

```dart
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
        body: Center(
          child: MyWidget(),
        ),
      ),
    );
  }
}

class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.all(8),
                width: 50,
                height: 50,
                color: Colors.red,
              ),
              Container(
                margin: const EdgeInsets.all(8),
                width: 50,
                height: 50,
                color: Colors.green,
              ),
              Container(
                margin: const EdgeInsets.all(8),
                width: 50,
                height: 50,
                color: Colors.blue,
              ),
            ],
          ),
          Container(
            color: Colors.yellow,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  margin: const EdgeInsets.all(8),
                  color: Colors.purple,
                  width: 50,
                  height: 100,
                ),
                Container(
                  margin: const EdgeInsets.all(8),
                  color: Colors.cyan,
                  width: 50,
                  height: 100,
                ),
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(
                          bottom: 8,
                        ),
                        color: Colors.purple,
                        width: 50,
                        height: 50,
                      ),
                      Container(
                        color: Colors.cyan,
                        width: 50,
                        height: 50,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: Colors.grey,
            margin: const EdgeInsets.all(8),
            padding: const EdgeInsets.all(8),
            width: 100,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  color: Colors.black,
                  width: 50,
                  height: 50,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
```

___

### 2 - Quadrados empilhados

```dart
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
  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Pilha(
          backgroundColor: Colors.grey,
          children: [
            Colors.red,
            Colors.green,
            Colors.blue,
          ],
        ),
        Pilha(
          backgroundColor: Colors.black,
          children: [
            Colors.cyan,
            Colors.purple,
            Colors.yellow,
          ],
        ),
        Pilha(
          children: [
            Colors.red,
            Colors.yellow,
            Colors.blue,
          ],
        ),
        Pilha(
          backgroundColor: Colors.white,
          children: [
            Colors.deepPurple,
            Colors.deepOrange,
            Colors.yellow,
            Colors.lime,
          ],
        ),
      ],
    );
  }
}

class Pilha extends StatelessWidget {
  const Pilha({
    this.backgroundColor,
    required this.children,
  });

  final Color? backgroundColor;
  final List<Color> children;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      color: backgroundColor,
      width: 100,
      height: 100,
      child: Stack(
        children: [
          for (var index = 0; index < children.length; index++)
            Positioned(
              top: index * 8 + 8,
              left: index * 8 + 8,
              child: Container(
                width: 50,
                height: 50,
                color: children[index],
              ),
            ),
        ],
      ),
    );
  }
}
```

___

### 3 - Formatos dinâmicos

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
      quadrado ? 'Mudar para círculo' : 'Mudar para quadrado';

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
```

___