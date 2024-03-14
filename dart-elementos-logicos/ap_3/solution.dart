import 'dart:math';

void main() {
  final random = Random();

  // Gerar número aleatorio
  final numero = random.nextInt(900) + 100;
  final soma = somaDosPares(numero);

  // Imprimir resultado
  print('A soma dos números pares entre 0 e $numero e $soma');
}

int somaDosPares(int maximo) {
  int acumulador = 0;

  // Passar por todos números ate chegar no maximo
  for (int indice = 1; indice <= maximo; indice++) {
    if (indice.isEven) {
      acumulador += indice;
    }
  }

  return acumulador;
}
