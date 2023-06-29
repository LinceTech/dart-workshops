import 'dart:math';

void main() {
  // Gerar numero aleatorio
  final random = Random();
  final numero = random.nextInt(100);

  // Realizar calculo
  final resultado = Calculadora.dobro(numero);

  // Imprimindo resultado do calculo
  print("O dobro do numero $numero e: $resultado");
}

// Definindo classe abstrata
abstract class Calculadora {
  static int dobro(int numero) {
    return numero * 2;
  }
}