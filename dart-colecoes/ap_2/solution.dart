// Incluir import para gerar números aleatórios
import 'dart:math';

void main() {
  // Criar gerador de números
  final random = Random();

  // Utilizando o construtor [List.generate] para criar a lista
  final lista = List.generate(50, (_) => random.nextInt(15));

  // Imprimir lista original
  print("Lista original: ${lista.join(' ; ')}");

  // Remover números pares
  lista.removeWhere((item) => item.isEven);

  // Imprimir lista atualizada
  print("Lista atualizada: ${lista.join(' ; ')}");
}
