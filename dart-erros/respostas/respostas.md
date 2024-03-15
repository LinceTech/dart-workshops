# Respostas

### 1 - Conversão de números

```dart
void main() {
  // Executar a função caindo no tratamento de exception
  programa('letras');

  // Executar a função de forma bem sucedida
  programa('1235');
}

void programa(String valor) {
  try {
    // Converter string para inteiro
    int numero = int.parse(valor);
    print("Numero digitado: $numero");
  } catch (e) {
    print("Entrada invalida. Insira apenas números inteiros.");
  }
}
```

___

### 2 - Validar números pares

```dart
void main() {
  try {
    programa(7);
    print("Entrada correta, você inseriu um número par");
  } on Exception catch (e) {
    // Imprimir a mensagem de erro
    print(e);
  }
}

// Programa que lança erro caso receba um número impar
void programa(int numero) {
  if (numero.isOdd) {
    throw Exception('Entrada inválida. Insira apenas números pares');
  }
}
```

___

### 3 - Área do retângulo

```dart
import 'dart:math';

void main() {
  final random = Random();

  try {
    // Criando retângulo
    final retangulo = Retangulo(
      random.nextDouble() * 99,
      random.nextDouble() * 99,
    );

    // Calculando area
    double area = retangulo.calcularArea();
    print("Area do retângulo: ${area.toStringAsFixed(2)}");
  } on Exception catch (e) {
    // Imprimir mensagem de erro
    print(e);
  }
}

abstract class Forma {
  double calcularArea();
}

class Retangulo implements Forma {
  Retangulo(this.base, this.altura) {
    // Tratamento das dimensões
    if (base <= 0 || altura <= 0) {
      throw Exception(
        'Dimensões inválidas, informe apenas valores positivos maiores que zero',
      );
    }
  }

  final double base;
  final double altura;

  @override
  double calcularArea() {
    return base * altura;
  }
}
```

___

### 4 - Simular criação de arquivos

```dart
void main() {
  try {
    // Definindo um nome arbitrário para o arquivo
    final nomeArquivo = 'bloco.txt';

    ArquivoTexto arquivoTexto = ArquivoTexto(nomeArquivo);
    arquivoTexto.abrir();
  } catch (e) {
    // Imprimir mensagem de erro
    print(e);
  } finally {
    print("Fim do programa");
  }
}

abstract class Arquivo {
  void abrir();
}

class ArquivoTexto implements Arquivo {
  ArquivoTexto(this.nome);

  final String nome;

  @override
  void abrir() {
    try {
      // Simula a abertura do arquivo
      throw Exception("Erro ao abrir o arquivo $nome");
    } catch (e) {
      print('Relançar a exception');
      rethrow;
    }
  }
}
```

___
