import 'dart:math';

void main() {
  final random = Random();
  var valorA = random.nextInt(100);
  var valorB = random.nextInt(100);

  // Imprimir valores iniciais
  print("----- VALORES ALEATORIOS -----");
  print("Valor A: $valorA");
  print("Valor B: $valorB");

  // Inverter variaveis
  final auxiliar = valorA;
  valorA = valorB;
  valorB = auxiliar;

  // Imprimir valores invertidos
  print("----- VALORES INVERTIDOS -----");
  print("Valor A: $valorA");
  print("Valor B: $valorB");
}
