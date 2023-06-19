Future<void> main() async {
  print('Iniciando lancamento');

  var contador = 5;

  while (contador > 0) {
    await function(contador);

    contador--;
  }

  print('Foguete lancado!');
}
