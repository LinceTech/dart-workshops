Future<void> main() async {
  print('Iniciando lancamento');

  var contador = 5;

  while (contador > 0) {
    await contagem(contador);

    contador--;
  }

  print('Foguete lan~çado!');
}

Future<void> contagem(int value) async {
  print('$value');
  await Future.delayed(
    Duration(
      seconds: 1,
    ),
        () {},
  );
}
