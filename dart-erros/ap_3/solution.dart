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
    // Tratamento das dimensoes
    if (base <= 0 || altura <= 0) {
      throw Exception(
        'Dimensões invalidas, informe apenas valores positivos maiores que zero',
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
