// Incluir import para gerar numeros aleatorios
import 'dart:math';

void main() {
  // Criar gerador de numeros
  final random = Random();

  // Utilizando o construtor [List.generate] para criar a lista
  final lista = List.generate(50, (_) => random.nextInt(15));

  // Imprimir lista original
  print("Lista original: ${lista.join(' ; ')}");

  // Remover numeros pares
  lista.removeWhere((item) => item.isEven);

  // Imprimir lista atualizada
  print("Lista atualizada: ${lista.join(' ; ')}");
}
