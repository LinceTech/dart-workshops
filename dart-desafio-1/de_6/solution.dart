void main() {
  final numeros = [3, 17, 23, 49, 328, 1358, 21, 429, 12, 103, 20021];
  imprimirNumeros(numeros);
}

void imprimirNumeros(List<int> numeros) {
  for (final decimal in numeros..sort()) {
    print('decimal: $decimal, '
        'binario: ${decimal.toRadixString(2)}, '
        'octal: ${decimal.toRadixString(8)}, '
        'hexadecimal: ${decimal.toRadixString(16)}');
  }
}