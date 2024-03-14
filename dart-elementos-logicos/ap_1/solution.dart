void main() {
  // Gerar lista
  final numerosImpares = gerarNumerosImpares(10);

  // Imprimir lista
  for (var numero in numerosImpares) {
    print('Impar: $numero');
  }
}

// Definição do método
List<int> gerarNumerosImpares(int maximo) {
  var contador = 0;
  var sequencia = <int>[];

  // Gerar números impares ate chegar no valor do parâmetro
  while (contador < maximo) {
    if (contador.isOdd) {
      sequencia.add(contador);
    }
    contador++;
  }
  return sequencia;
}
