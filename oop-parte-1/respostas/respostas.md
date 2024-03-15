# Respostas

### 1 - Conta bancária

```dart
void main() {
  // Criando conta bancaria
  final conta = ContaBancaria(1000.0, "Joao");
  conta.depositar(500.0);
  conta.sacar(200.0);

  // Imprimir saldo
  print("Saldo atual: ${conta.saldo}");
}

// Definição da classe
class ContaBancaria {
  // Construtor padrão
  ContaBancaria(this.saldo, this.titular);

  // Atributos
  double saldo;
  String titular;

  // Método para incrementar valor da conta
  void depositar(double valor) {
    saldo += valor;
  }

  // Método para decrementar valor da conta
  void sacar(double valor) {
    if (valor <= saldo) {
      saldo -= valor;
    } else {
      print("Saldo insuficiente.");
    }
  }
}
```

___

### 2 - Área de retângulo

```dart
void main() {
  // Criar retângulo
  final retangulo = Retangulo(5.0, 3.0);

  // Calcular area
  double area = retangulo.calcularArea();

  // Imprimir area
  print("Área do retângulo: $area");
}

// Definição da classe
class Retangulo {
  // Construtor padrao
  Retangulo(this.largura, this.altura);

  // Atributos
  final double largura;
  final double altura;

  // A = altura * largura
  double calcularArea() {
    return altura * largura;
  }
}
```

___

### 3 - Produtos e descontos

```dart
void main() {
  // Criando listas
  final produtos = <Produto>[];
  final nomes = ['Garrafa', 'camisa', 'colar', 'bermuda', 'óculos'];
  final precos = [2.0, 10.0, 8.5, 4.0, 14.0];

  // Passar pelos dados das listas
  for (int i = 0; i < 5; i++) {
    // Criando novo produto
    final produto = Produto();
    produto.nome = nomes[i];
    produto.preco = precos[i];

    // Incluir na lista de produtos
    produtos.add(produto);

    // Calcular novo preço
    final novoPreco = produto.desconto(3.0);

    // Imprimir dados do produto
    print(
      "Novo preço do produto ${produtos[i].nome} (com desconto): $novoPreco\n",
    );
  }
}

class Produto {
  // Atributos do produto
  String nome = '';
  double preco = 0.0;

  // Calcular preço com desconto
  double desconto(double percentual) {
    return preco - (preco * (percentual / 100));
  }
}
```

___

### 4 - Pessoas

```dart
import 'dart:math';

void main() {
  final random = Random();

  // Criar pessoa
  final pessoa = Pessoa();

  // Definindo os valores
  pessoa.nome = "Joao";
  pessoa.idade = random.nextInt(99) + 1;
  pessoa.altura = (random.nextDouble() * 1.3) + 1;

  // Imprimindo os valores
  print("Nome: ${pessoa.nome}");
  print("Idade: ${pessoa.idade}");
  print("Altura: ${pessoa.altura.toStringAsFixed(2)}");
}

// Definição da classe
class Pessoa {
  // Atributos
  String _nome = '';
  int _idade = 0;
  double _altura = 0.0;

  int get idade => _idade;

  set idade(int valor) {
    if (valor >= 0) {
      _idade = valor;
    } else {
      print("A idade deve ser um valor maior ou igual a zero.");
    }
  }

  String get nome => _nome;

  set nome(String valor) {
    _nome = valor;
  }

  double get altura => _altura;

  set altura(double valor) {
    _altura = valor;
  }
}
```

___
