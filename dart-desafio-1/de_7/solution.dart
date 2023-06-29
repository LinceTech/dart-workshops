void main() {
  final numeros = [10, 35, 999, 126, 95, 7, 348, 462, 43, 109];
  final resultadoFor = somaFor(numeros);
  final resultadoWhile = somaWhile(numeros);
  final resultadoLista = somaLista(numeros);
  final resultadoRecursivo = somaRecursivo(numeros);

  print('for: $resultadoFor');
  print('while: $resultadoWhile');
  print('recursao: $resultadoLista');
  print('lista: $resultadoRecursivo');
}

int somaFor(List<int> numeros) {
  var soma = 0;
  for (final numero in numeros) {
    soma += numero;
  }
  return soma;
}

int somaWhile(List<int> numeros) {
  var soma = 0;
  final iterador = numeros.iterator;
  while(iterador.moveNext()) {
    soma += iterador.current;
  }
  return soma;
}

int somaLista(List<int> numeros) => numeros.reduce((a, b) => a + b);

int somaRecursivo(List<int> numeros) {
  if (numeros.isEmpty) {
    return 0;
  }
  return numeros.first + somaRecursivo(numeros.sublist(1));
}