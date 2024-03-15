import 'dart:math';

void main() {
  // Gerar número aleatório
  final random = Random();
  final numero = random.nextInt(100);

  // Realizar cálculo
  final resultado = Calculadora.dobro(numero);

  // Imprimindo resultado do cálculo
  print("O dobro do número $numero e: $resultado");
}

// Definindo classe abstrata
abstract class Calculadora {
  static int dobro(int numero) {
    return numero * 2;
  }
}