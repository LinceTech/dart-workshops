import 'dart:math';

void main() {
  // Gerar numeros decimais
  final random = Random();
  final numeros = List.generate(15, (_) => random.nextInt(5000));

  // Imprimir lista de numeros
  imprimirNumeros(numeros);
}

void imprimirNumeros(List<int> numeros) {
  // Ordenar a lista em ordem crescente
  numeros.sort();

  // Imprimir os numeros
  for (final decimal in numeros) {
    print(
      'decimal: $decimal, '
      'binario: ${converterParaBinario(decimal)}, '
      'octal: ${converterParaOctal(decimal)}, '
      'hexadecimal: ${converterParaHexadecimal(decimal)}',
    );
  }
}

// Retorna o numero recebido em sua representacao binaria
String converterParaBinario(int numero) => numero.toRadixString(2);

// Retorna o numero recebido em sua representacao octal
String converterParaOctal(int numero) => numero.toRadixString(8);

// Retorna o numero recebido em sua representacao hexadecimal
String converterParaHexadecimal(int numero) => numero.toRadixString(8);
