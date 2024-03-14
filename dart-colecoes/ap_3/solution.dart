// Incluir import para gerar números aleatórios
import 'dart:math';

void main() {
  // Criar gerador de números
  final random = Random();

  // Utilizando o construtor [List.generate] para criar a lista
  final lista = List.generate(50, (_) => random.nextInt(11) + 10);

  // Imprimir lista original
  print("Lista original: ${lista.join(' ; ')}");

  // Remover itens repetidos
  final itensUnicos = lista.toSet();

  // Imprimir itens únicos
  print("Itens únicos: ${itensUnicos.join(' ; ')}");
}
