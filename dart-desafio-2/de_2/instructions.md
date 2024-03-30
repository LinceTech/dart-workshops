## Refatoração de programas, iniciante

**IMPORTANTE**: para a realização desse exercício, nao deve ser utilizado dynamic.

**Objetivo do programa**: fazer a simulação de uma **pessoa** que consome **calorias** provenientes de **produtos**, os
produtos sao fornecidos por **fornecedores**.

Considerando o objetivo do programa, efetue uma refatoração utilizando os conceitos de orientação a objetos, completando
os requisitos especificados abaixo, utilizando comentários para demarcar no código onde os objetivos foram atingidos.

1. Criar novos fornecedores: sanduíches, bolos, saladas, petiscos, ultra-calóricos
2. Alterar o programa para escolher um novo fornecedor aleatoriamente para cada "refeição"
3. Nas informações da pessoa, adicione uma lógica "status" do nível de calorias (dica: utilizar um enum)
    1. Calorias <= 500 : Deficit extremo de calorias;
    2. 500 > Calorias <= 1800 : Deficit de calorias;
    3. 1800 > Calorias <= 2500 : Pessoa está satisfeita;
    4. Calorias > 2500 : Excesso de calorias;
4. Altere o programa para definir um nível inicial de calorias aleatoriamente ao instanciar uma pessoa;
5. Altere o programa para se basear no nível de calorias para definir se a pessoa precisa de refeições
6. Imprima o número de refeições realizadas nas informações da pessoa;

Tempo do desafio: __60 minutos__

### Código base

```dart
import 'dart:math';

void main() {
  final pessoa = Pessoa();
  final fornecedor = FornecedorDeBebidas();

  // Consumindo produtos fornecidos
  for (var i = 0; i < 5; i++) {
    pessoa.refeicao(fornecedor);
  }

  pessoa.informacoes();
}

class Produto {
  Produto(this.nome, this.calorias);

  /// Nome deste produto
  final String nome;

  /// Total de calorias
  final int calorias;
}

class FornecedorDeBebidas {
  final _random = Random();
  final _bebidasDisponiveis = <Produto>[
    Produto('Agua', 0),
    Produto('Refrigerante', 200),
    Produto('Suco de fruta', 100),
    Produto('Energetico', 135),
    Produto('Cafe', 60),
    Produto('Cha', 35),
  ];

  /// Retorna um produto que pode ser consumido por um consumidor
  Produto fornecer() {
    return _bebidasDisponiveis[_random.nextInt(_bebidasDisponiveis.length)];
  }
}

class Pessoa {
  // Acumulador de calorias
  int _caloriasConsumidas = 0;

  /// Imprime as informacoes desse consumidor
  void informacoes() {
    print('Calorias consumidas: $_caloriasConsumidas');
  }

  /// Consome um produto e aumenta o número de calorias
  void refeicao(FornecedorDeBebidas fornecedor) {
    final produto = fornecedor.fornecer();
    print('Consumindo ${produto.nome} (${produto.calorias} calorias)');

    _caloriasConsumidas += produto.calorias;
  }
}
```