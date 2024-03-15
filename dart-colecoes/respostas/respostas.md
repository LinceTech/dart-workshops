# Respostas

### 1 - Lista aleatória

```dart
// Incluir import para gerar números aleatórios
import 'dart:math';

void main() {
  // Criar gerador de números
  final random = Random();

  // Utilizando o construtor [List.generate] para criar a lista
  final lista = List.generate(10, (_) => random.nextInt(100));

  // Imprimindo a lista conforme especificado
  for (var indice = 0; indice < lista.length; indice++) {
    print('Posicao: $indice, Valor: ${lista[indice]}');
  }
}
```

___

### 2 - Utilizando métodos de lista

```dart
// Incluir import para gerar números aleatórios
import 'dart:math';

void main() {
  // Criar gerador de números
  final random = Random();

  // Utilizando o construtor [List.generate] para criar a lista
  final lista = List.generate(50, (_) => random.nextInt(15));

  // Imprimir lista original
  print("Lista original: ${lista.join(' ; ')}");

  // Remover números pares
  lista.removeWhere((item) => item.isEven);

  // Imprimir lista atualizada
  print("Lista atualizada: ${lista.join(' ; ')}");
}
```

___

### 3 - Utilizando métodos de lista

```dart
// Incluir import para gerar números aleatórios
import 'dart:math';

void main() {
  // Criar gerador de números
  final random = Random();

  // Utilizando o construtor [List.generate] para criar a lista
  final lista = List.generate(50, (_) => random.nextInt(11) + 10);

  // Imprimir lista original
  print("Lista original: ${lista.join(' ; ')}");

  // Remover itens repetidos
  final itensUnicos = lista.toSet();

  // Imprimir itens únicos
  print("Itens únicos: ${itensUnicos.join(' ; ')}");
}
```

___

### 4 - Utilizando mapas

```dart
void main() {
  // Definindo o mapa de estados
  final estados = {
    'SC': ['Gaspar', 'Blumenau', 'Florianopolis'],
    'PR': ['Curitiba', 'Cascavel', 'Foz do Iguacu'],
    'SP': ['Sao Paulo', 'Guarulhos', 'Campinas'],
    'MG': ['Belo Horizonte', 'Juiz de Fora', 'Berlinda'],
  };

  // Imprimir a lista de siglas dos estados
  print('Estados: ${estados.keys.join(' ; ')}');

  // Pegar lista das cidades de Santa Catarina
  final santaCatarina = estados['SC']!;

  // Ordenar as cidades em ordem alfabetica
  santaCatarina.sort();

  // Imprimir as cidades de Santa Catarina
  print('Cidades de SC: ${santaCatarina.join(' ; ')}');

  // Lista para organizar os dados para imprimir
  final cidadesComSigla = [];

  // Passar por todos os estados cadastrados
  for (var siglaEstado in estados.keys) {
    // Coletando as cidades do estado
    final cidadesDoEstado = estados[siglaEstado]!;

    // Passando por todas as cidades do estados
    for (var cidade in cidadesDoEstado) {
      cidadesComSigla.add('$cidade - $siglaEstado');
    }
  }

  // Ordenar em ordem alfabetica
  cidadesComSigla.sort();

  print('-------------------------------------------------------------------');

  // Imprimir os itens da lista
  for (var item in cidadesComSigla) {
    print(item);
  }

  print('-------------------------------------------------------------------');
}
```

___
