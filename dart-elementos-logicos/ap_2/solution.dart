import 'dart:math';

void main() {
  final random = Random();

  // Executar 5 vezes
  for (var indice = 0; indice < 5; indice++) {
    final numeroAleatorio = random.nextInt(25) + 1;
    final letraCorrespondente = pegarLetra(numeroAleatorio);

    // Imprimir numero e letra
    print('Numero $numeroAleatorio -> Letra $letraCorrespondente');
  }
}

String pegarLetra(int numero) {
  int valorASCIIletraA = 'A'.codeUnitAt(0); // Valor ASCII da letra 'A'
  int codigoASCII = valorASCIIInicial + numero - 1;
  return String.fromCharCode(codigoDaLetra);
}
