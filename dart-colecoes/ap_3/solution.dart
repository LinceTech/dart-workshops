// Incluir import para gerar numeros aleatorios
import 'dart:math';

void main() {
  // Criar gerador de numeros
  final random = Random();

  // Utilizando o construtor [List.generate] para criar a lista
  final lista = List.generate(50, (_) => random.nextInt(11) + 10);

  // Imprimir lista original
  print("Lista original: ${lista.join(' ; ')}");

  // Remover itens repetidos
  final itensUnicos = lista.toSet();

  // Imprimir itens unicos
  print("Itens unicos: ${itensUnicos.join(' ; ')}");
}
