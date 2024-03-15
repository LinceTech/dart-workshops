# Respostas

### 1 - Definição de variáveis

```dart
void main() {
  // Declarando as variáveis
  String nome = "John";
  String sobrenome = "Doe";
  int idade = 18;
  bool ativo = true;
  double peso = 72.8;
  String? nacionalidade = null;

  // Imprimir no console, com a formatação especificada
  print("Nome completo: $nome $sobrenome");

  if (idade >= 18) {
    print("Idade: $idade (maior de idade)");
  } else {
    print("Idade: $idade (menor de idade)");
  }

  if (ativo) {
    print("Situação: Ativo");
  } else {
    print("Situação: Inativo");
  }

  print("Peso: ${peso.toStringAsFixed(2)}");

  if (nacionalidade != null) {
    print("Nacionalidade: $nacionalidade");
  } else {
    print("Nacionalidade: Nao informada");
  }
}
```

___

### 2 - Cálculo de médias

```dart
void main() {
  const valor1 = 7.0;
  const valor2 = 8.0;
  const valor3 = 5.3;
  const valor4 = 9.7;
  const media = (valor1 + valor2 + valor3 + valor4) / 4;

  print(
    'A media entre [ ${valor1.toStringAsFixed(1)} , ${valor2.toStringAsFixed(1)} , ${valor3.toStringAsFixed(1)} , ${valor4.toStringAsFixed(1)} ] = ${media.toStringAsFixed(1)}',
  );
}
```

___

### 3 - Inverter valores

```dart
import 'dart:math';

void main() {
  final random = Random();
  var valorA = random.nextInt(100);
  var valorB = random.nextInt(100);

  // Imprimir valores iniciais
  print("----- VALORES ALEATORIOS -----");
  print("Valor A: $valorA");
  print("Valor B: $valorB");

  // Inverter variáveis
  final auxiliar = valorA;
  valorA = valorB;
  valorB = auxiliar;

  // Imprimir valores invertidos
  print("----- VALORES INVERTIDOS -----");
  print("Valor A: $valorA");
  print("Valor B: $valorB");
}
```

___

### 4 - Divisões

```dart
import 'dart:math';

void main() {
    // Inicializando as variáveis
    final random = Random();
    final valorA = random.nextInt(100);
    final valorB = random.nextInt(100);
    final resultado = valorA / valorB;
    final parteInteira = resultado.floor();
    final parteDecimal = (resultado.floor() - resultado).abs();

    // Imprimir valores iniciais
    print("----- VALORES DAS VARIAVEIS -----");
    print("valorA: $valorA");
    print("valorB: $valorB");
    print("resultado: $resultado");
    print("parteInteira: $parteInteira");
    print("parteDecimal: $parteDecimal");
}
```

___

### 5 - [EXTRA] Utilizando classes

```dart
void main() {
  const pessoa = Pessoa("John", "Doe", 18, true, 72.8, null);
  print(pessoa.toString());
}

class Pessoa {
  const Pessoa(
    this.nome,
    this.sobrenome,
    this.idade,
    this.ativo,
    this.peso,
    this.nacionalidade,
  );

  // Declarando as variáveis
  final String nome;
  final String sobrenome;
  final int idade;
  final bool ativo;
  final double peso;
  final String? nacionalidade;

  @override
  String toString() {
    var imprimirFormatado = "";

    // Imprimir no console, com a formatação especificada
    imprimirFormatado += "Nome completo: $nome $sobrenome\n";

    if (idade >= 18) {
      imprimirFormatado += "Idade: $idade (maior de idade)\n";
    } else {
      imprimirFormatado += "Idade: $idade (menor de idade)\n";
    }

    if (ativo) {
      imprimirFormatado += "Situação: Ativo\n";
    } else {
      imprimirFormatado += "Situação: Inativo\n";
    }

    imprimirFormatado += "Peso: ${peso.toStringAsFixed(2)}\n";

    if (nacionalidade != null) {
      imprimirFormatado += "Nacionalidade: $nacionalidade\n";
    } else {
      imprimirFormatado += "Nacionalidade: Nao informada\n";
    }

    return imprimirFormatado;
  }
}
```

___
