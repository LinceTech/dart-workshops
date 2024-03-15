# Respostas

### 1 - Praticando funções

```dart
// Incluir import para gerar números aleatórios
import 'dart:math';

void main() {
  // Criar gerador de números
  final random = Random();

  // Utilizando o construtor [List.generate] para criar as listas
  final lista1 = List.generate(5, (_) => random.nextInt(100));
  final lista2 = List.generate(5, (_) => random.nextInt(100));

  // Imprimir as listas
  imprimirLista(lista1);
  imprimirLista(lista2);

  final lista3 = somarListas(lista1, lista2);
  imprimirLista(lista3);
}

// Função que imprime uma lista
void imprimirLista(List<int> lista) {
  if (lista.length > 0) {
    print('Lista: ${lista.join(', ')}');
  } else {
    print('Lista vazia');
  }
}

// Funcao que recebe duas listas, e retorna a soma das casas da lista
List<int> somarListas(List<int> lista1, List<int> lista2) {
  if (lista1.length != lista2.length) {
    return [];
  }

  final resultado = <int>[];

  // Passar por todos os itens das listas
  for (var indice = 0; indice < lista1.length; indice++) {
    // Somar os valores das duas listas
    final valorLista1 = lista1[indice];
    final valorLista2 = lista2[indice];
    final soma = valorLista1 + valorLista2;

    print('${valorLista1}+${valorLista2}');

    // Adicionar soma na lista de itens para retornar
    resultado.add(soma);
  }

  return resultado;
}
```

___

### 2 - Cadeia de funções

```dart
import 'dart:math';

void main() {
  // Chamando as funções conforme especificação
  final resultado1 = funcaoA(funcaoB);
  final resultado2 = funcaoA(funcaoC);

  // Imprimir resultados
  print('A(B) = $resultado1');
  print('A(C) = $resultado2');
}

// Função A recebe outra função como parâmetro, e a executa duas vezes,
// retornando a soma das execuções.
int funcaoA(int Function(int) funcaoParametro) {
  final random = Random();
  final resultado1 = funcaoParametro(random.nextInt(100));
  final resultado2 = funcaoParametro(random.nextInt(100));
  final soma = resultado1 + resultado2;

  return soma;
}

// Função B retorna o parâmetro multiplicado por 2
int funcaoB(int parametro) {
  return parametro * 2;
}

// Função C retorno o resto da divisão do parâmetro por 2
int funcaoC(int parametro) {
  return parametro % 2;
}
```

___

### 3 - Calculo de área e perímetro

```dart
import 'dart:math';

void main() {
  // Gerar raios aleatoriamente
  final random = Random();
  final raios = List.generate(10, (_) => random.nextDouble() * 99 + 1);

  // Chamando cálculo de raios
  calcularRaios(raios);
}

// Calcula a area de um círculo
double areaCirculo(double raio) => pi * pow(raio, 2);

// Calcula o perímetro de um círculo
double perimetroCirculo(double raio) => 2 * pi * raio;

// Recebe uma lista de raios, e calcula a area e perímetro desses círculos
void calcularRaios(List<double> raios) {
  for (final raio in raios) {
    final area = areaCirculo(raio);
    final perimetro = perimetroCirculo(raio);

    print(
      'Raio: ${raio.toStringAsFixed(2)}, '
      'area: ${area.toStringAsFixed(2)}, '
      'perímetro: ${perimetro.toStringAsFixed(2)}.',
    );
  }
}
```

___

### 4 - Conversão de base

```dart
import 'dart:math';

void main() {
  // Gerar números decimais
  final random = Random();
  final numeros = List.generate(15, (_) => random.nextInt(5000));

  // Imprimir lista de números
  imprimirNumeros(numeros);
}

void imprimirNumeros(List<int> numeros) {
  // Ordenar a lista em ordem crescente
  numeros.sort();

  // Imprimir os números
  for (final decimal in numeros) {
    print(
      'decimal: $decimal, '
      'binário: ${converterParaBinario(decimal)}, '
      'octal: ${converterParaOctal(decimal)}, '
      'hexadecimal: ${converterParaHexadecimal(decimal)}',
    );
  }
}

// Retorna o número recebido em sua representação binaria
String converterParaBinario(int numero) => numero.toRadixString(2);

// Retorna o número recebido em sua representação octal
String converterParaOctal(int numero) => numero.toRadixString(8);

// Retorna o número recebido em sua representação hexadecimal
String converterParaHexadecimal(int numero) => numero.toRadixString(8);
```

___
