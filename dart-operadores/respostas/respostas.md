# Respostas

### 1 - Anos bissextos

```dart
void main() {
  // Lista de anos para validar
  final anos = [2016, 1988, 2000, 2100, 2300, 1993];

  // Verificar todos os anos
  for (var ano in anos) {
    print(ehAnoBissexto(ano)
        ? 'O ano $ano eh bissexto'
        : 'O ano $ano nao eh bissexto');
  }
}

bool ehAnoBissexto(int ano) {
  if (ano % 100 == 0) {
    // Anos terminando em 00 precisam ser divisíveis por 400 para serem bissexto
    return (ano % 400) == 0;
  } else {
    // Anos nao terminando em 00 precisam ser divisíveis por 4 para serem bissexto
    return (ano % 4) == 0;
  }
}
```

___

### 2 - Lista de números

```dart
void main() {
  // Inicializando lista
  final textos = [
    '10',
    '2XXL7',
    'JOJ0',
    '99',
    '381',
    'AD44',
    '47',
    '2B',
    '123',
    '78'
  ];

  // Convertendo lista para números
  final numeros = converterLista(textos);

  // Imprimir a lista de números
  print('Lista convertida: ${numeros.join(', ')}');
}

List<int> converterLista(List<String> textos) {
  final lista = <int>[];

  for (var texto in textos) {
    // Tentamos converter o texto para número
    int? numero = int.tryParse(texto);

    // Se o número for null, mudamos para 0 (zero)
    numero ??= 0;

    // Incluir número convertido na lista
    lista.add(numero);
  }

  return lista;
}
```

___

### 3 - Remover da lista

```dart
void main() {
  // Criando lista original
  final listaOriginal = [
    'Dio',
    'Ozzy',
    'Max',
    'Joseph',
    'Jack',
    'Caesar',
    'Michael',
  ];

  // Remover item da lista
  final novaLista = removerElemento(
    lista: listaOriginal,
    elemento: 'Caesar',
  );

  // Imprimir lista atualizada
  for (var item in novaLista) {
    print('Item: $item');
  }
}

List<String> removerElemento({
  List<String>? lista,
  String? elemento,
}) {
  // Se a lista nao for nula, remove o element
  lista?.remove(elemento);

  // Se a lista for nula, retorna uma nova lista vazia
  return lista ?? [];
}
```

___

### 4 - Definição de variáveis

```dart
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
  // Calcular o percentual que o preço atual representa do valor original
  final percentual = (valorComDesconto * 100) ~/ valorOriginal;

  // Retorna o percentual que foi aplicado no produto
  return 100 - percentual;
}
```

___

### 5 - Pessoas e idades

```dart
void main() {
  // Inicializando o mapa
  final mapa = {
    "Nelson": null,
    "Jane": null,
    "Jack": 16,
    "Rupert": 37,
    "Andy": 13,
    "Kim": 27,
    "Robert": 31,
  };

  for (final nome in mapa.keys) {
    // Pegar a idade da pessoa
    final idade = mapa[nome];

    // Imprimir a resposta
    print('$nome - ${idade ?? 'idade nao informada'}');
  }
}
```

___
