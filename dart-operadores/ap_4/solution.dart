void main() {
  final valorOriginalDoProduto = 10.0;
  final valorComDesconto = 7.0;

  // Imprimir valores
  print(
    'O produto custava $valorOriginalDoProduto reais '
    'e foi vendido por $valorComDesconto reais.',
  );

  // Calcular o desconto
  final desconto = descobrirDesconto(valorOriginalDoProduto, valorComDesconto);

  // Imprimir a resposta
  print('O desconto dado foi $desconto%.');
}

int descobrirDesconto(double valorOriginal, double valorComDesconto) {
  // Calcular o percentual que o preco atual representa do valor original
  final percentual = (valorComDesconto * 100) ~/ valorOriginal;

  // Retorna o percentual que foi aplicado no produto
  return 100 - percentual;
}
