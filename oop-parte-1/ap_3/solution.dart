void main() {
  // Criando listas
  final produtos = <Produto>[];
  final nomes = ['Garrafa', 'camisa', 'colar', 'bermuda', 'oculos'];
  final precos = [2.0, 10.0, 8.5, 4.0, 14.0];

  // Passar pelos dados das listas
  for (int i = 0; i < 5; i++) {
    // Criando novo produto
    final produto = Produto();
    produto.nome = nomes[i];
    produto.preco = precos[i];

    // Incluir na lista de produtos
    produtos.add(produto);

    // Calcular novo preco
    final novoPreco = produto.desconto(3.0);

    // Imprimir dados do produto
    print(
      "Novo preco do produto ${produtos[i].nome} (com desconto): $novoPreco\n",
    );
  }
}

class Produto {
  // Atributos do produto
  String nome = '';
  double preco = 0.0;

  // Calcular preco com desconto
  double desconto(double percentual) {
    return preco - (preco * (percentual / 100));
  }
}