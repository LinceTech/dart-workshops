// Incluir import para gerar números aleatórios
import 'dart:math';

void main() {
  // Criar gerador de números
  final random = Random();

  // Utilizando o construtor [List.generate] para criar a lista
  final lista = List.generate(10, (_) => random.nextInt(100));

  // Imprimindo a lista conforme especificado
  for (var indice = 0; indice < lista.length; indice++) {
    print('Posicao: $indice, Valor: ${lista[indice]}');
  }
}
