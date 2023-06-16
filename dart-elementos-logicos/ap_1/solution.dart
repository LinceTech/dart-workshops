void main() {
  // Gerar lista
  final numerosImpares = gerarNumerosImpares(10);

  // Imprimir lista
  for (var numero in numerosImpares) {
    print('Impar: $numero');
  }
}

// Definicao do metodo
List<int> gerarNumerosImpares(int maximo) {
  var contador = 0;
  var sequencia = <int>[];

  // Gerar numeros impares ate chegar no valor do parametro
  while (contador < maximo) {
    if (contador.isOdd) {
      sequencia.add(contador);
    }
    contador++;
  }
  return sequencia;
}
