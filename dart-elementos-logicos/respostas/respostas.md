# Respostas

### 1 - Números impares

```dart
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
```

___

### 2 - Sequência do alfabeto

```dart
import 'dart:math';

void main() {
  final random = Random();

  // Executar 5 vezes
  for (var indice = 0; indice < 5; indice++) {
    final numeroAleatorio = random.nextInt(25) + 1;
    final letraCorrespondente = pegarLetra(numeroAleatorio);

    // Imprimir número e letra
    print('Numero $numeroAleatorio -> Letra $letraCorrespondente');
  }
}

String pegarLetra(int numero) {
  int valorASCIIletraA = 'A'.codeUnitAt(0); // Valor ASCII da letra 'A'
  int codigoASCII = valorASCIIInicial + numero - 1;
  return String.fromCharCode(codigoDaLetra);
}
```

___

### 3 - Soma de números

```dart
import 'dart:math';

void main() {
  final random = Random();

  // Gerar número aleatório
  final numero = random.nextInt(900) + 100;
  final soma = somaDosPares(numero);

  // Imprimir resultado
  print('A soma dos números pares entre 0 e $numero e $soma');
}

int somaDosPares(int maximo) {
  int acumulador = 0;

  // Passar por todos números ate chegar no maximo
  for (int indice = 1; indice <= maximo; indice++) {
    if (indice.isEven) {
      acumulador += indice;
    }
  }

  return acumulador;
}
```

___

### 4 - Contar nomes

```dart
void main() {
  final listaNomes = [
    "Joao",
    "Maria",
    "Pedro",
    "Maria",
    "Ana",
    "Joao",
    "Maria",
    "Fernanda",
    "Carlos",
    "Maria"
  ];

  final nome = 'Ana';
  final quantidade = contarNome(listaNomes, nome);

  if (quantidade == 1) {
    print('O nome $nome foi encontrado 1 vez');
  } else if (quantidade > 0) {
    print('O nome $nome foi encontrado $quantidade vezes');
  } else {
    print('O nome nao foi encontrado');
  }
}

int contarNome(List<String> nomes, String nome) {
  var quantidade = 0;

  // Passar por toda lista de nomes
  for (final it in nomes) {
    if (it == nome) {
      // Se for o nome correto, incrementa a quantidade
      quantidade++;
    }
  }

  return quantidade;
}
```

___

### 5 - Simplificando comparações

```dart
import 'dart:math';

void main() {
  final random = Random();
  final opcao = random.nextInt(6);

  switch (opcao) {
    case 1:
    case 2:
    case 3:
    case 4:
      print('Encontrado $opcao');
      break;

    case 5:
      print('Encontrado final');
      break;

    default:
      print('Opcao invalida');
  }
}
```

___
