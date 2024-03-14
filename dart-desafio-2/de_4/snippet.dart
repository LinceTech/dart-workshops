import 'dart:math' as math;

void main() {
  // Definindo o comparador de formas
  final comparador = ComparadorFormasGeometricas();

  // Definindo as formas geometricas
  final circuloA = Circulo('Circulo A', 3);
  final circuloB = Circulo('Circulo B', 8);
  final retanguloA = Retangulo('Retângulo A', 4, 3);
  final retanguloB = Retangulo('Retângulo B', 19, 11);

  final circuloMaiorArea = comparador.circuloDeMaiorArea(circuloA, circuloB);
  final retanguloMaiorArea = comparador.retanguloDeMaiorArea(
    retanguloA,
    retanguloB,
  );

  if (circuloMaiorArea.area > retanguloMaiorArea.area) {
    print(
      'A maior area e ${circuloMaiorArea.area.toStringAsFixed(2)} '
          'e pertence a ${circuloMaiorArea.nome}',
    );
  } else {
    print(
      'A maior area e ${retanguloMaiorArea.area.toStringAsFixed(2)} '
          'e pertence a ${retanguloMaiorArea.nome}',
    );
  }

  final circuloaiorPerimetro = comparador.circuloDeMaiorPerimetro(
    circuloA,
    circuloB,
  );
  final retanguloMaiorPerimetro = comparador.retanguloDeMaiorPerimetro(
    retanguloA,
    retanguloB,
  );
  if (circuloaiorPerimetro.area > retanguloMaiorPerimetro.area) {
    print(
      'O maior perímetro e ${circuloaiorPerimetro.perimetro.toStringAsFixed(2)} '
          'e pertence a ${circuloaiorPerimetro.nome}',
    );
  } else {
    print(
      'O maior perímetro e ${retanguloMaiorPerimetro.perimetro.toStringAsFixed(2)} '
          'e pertence a ${retanguloMaiorPerimetro.nome}',
    );
  }
}

/// Representa a forma geometrica "círculo"
class Circulo {
  /// Construtor padrao, recebe o [raio] do círculo.
  Circulo(this.nome, this.raio);

  final String nome;
  final double raio;

  /// Retorna a area desse círculo
  double get area => math.pi * math.pow(raio, 2);

  /// Retorna o perímetro desse círculo
  double get perimetro => 2 * math.pi * raio;
}

/// Representa a forma geometrica "retângulo", forma geometrica de quatro lados
/// e angulos retos (90 graus).
class Retangulo {
  /// Construtor padrao, recebe a [altura] e [largura] do retângulo
  Retangulo(this.nome, this.altura, this.largura);

  final String nome;
  final double largura;
  final double altura;

  /// Retorna a area desse círculo
  double get area => altura * largura;

  /// Retorna o perímetro desse círculo
  double get perimetro => (altura * 2) + (largura * 2);
}

/// Representa a forma geometrica "quadrado", que e um formato especial de
/// retângulo, onde todos os lados possuem o mesmo tamanho.
class Quadrado {
  /// Construtor padrao, recebe o [lado] do quadrado
  Quadrado(this.nome, this.lado);

  final String nome;
  final double lado;

  /// Retorna a area desse quadrado
  double get area => lado * lado;

  /// Retorna o perímetro desse quadrado
  double get perimetro => lado * 4;
}

/// Compara caracteristicas de formas geometricas
class ComparadorFormasGeometricas {
  /// Retorna o círculo com a maior area, ou [circuloA] caso as areas sejam
  /// iguais
  Circulo circuloDeMaiorArea(Circulo circuloA, Circulo circuloB) {
    if (circuloA.area > circuloB.area) {
      return circuloA;
    } else if (circuloB.area > circuloA.area) {
      return circuloB;
    }
    return circuloA;
  }

  /// Retorna o círculo com o maior perímetro, ou [circuloA] caso os perímetros
  /// sejam iguais
  Circulo circuloDeMaiorPerimetro(Circulo circuloA, Circulo circuloB) {
    if (circuloA.perimetro > circuloB.perimetro) {
      return circuloA;
    } else if (circuloB.perimetro > circuloA.perimetro) {
      return circuloB;
    }
    return circuloA;
  }

  /// Retorna o retângulo com o maior perímetro, ou [retanguloA] caso os
  /// perímetros sejam iguais
  Retangulo retanguloDeMaiorPerimetro(Retangulo retanguloA, Retangulo retanguloB) {
    if (retanguloA.perimetro > retanguloB.perimetro) {
      return retanguloA;
    } else if (retanguloB.perimetro > retanguloA.perimetro) {
      return retanguloB;
    }
    return retanguloA;
  }

  /// Retorna o retângulo com o maior perímetro, ou [retanguloA] caso os
  /// perímetros sejam iguais
  Retangulo retanguloDeMaiorArea(Retangulo retanguloA, Retangulo retanguloB) {
    if (retanguloA.area > retanguloB.area) {
      return retanguloA;
    } else if (retanguloB.area > retanguloA.area) {
      return retanguloB;
    }
    return retanguloA;
  }
}