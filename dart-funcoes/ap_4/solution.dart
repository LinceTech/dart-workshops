import 'dart:math';

void main() {
  // Gerar números decimais
  final random = Random();
  final numeros = List.generate(15, (_) => random.nextInt(5000));

  // Imprimir lista de números
  imprimirNumeros(numeros);
}

void imprimirNumeros(List<int> numeros) {
  // Ordenar a lista em ordem crescente
  numeros.sort();

  // Imprimir os números
  for (final decimal in numeros) {
    print(
      'decimal: $decimal, '
      'binário: ${converterParaBinario(decimal)}, '
      'octal: ${converterParaOctal(decimal)}, '
      'hexadecimal: ${converterParaHexadecimal(decimal)}',
    );
  }
}

// Retorna o número recebido em sua representação binaria
String converterParaBinario(int numero) => numero.toRadixString(2);

// Retorna o número recebido em sua representação octal
String converterParaOctal(int numero) => numero.toRadixString(8);

// Retorna o número recebido em sua representação hexadecimal
String converterParaHexadecimal(int numero) => numero.toRadixString(8);
