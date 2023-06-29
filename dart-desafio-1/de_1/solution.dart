import 'dart:math' as math;

void main() {
  final raios = [5.0, 8.0, 12.0, 6.3, 15.0];
  calcularRaios(raios);
}

double areaCirculo(double raio) => math.pi * math.pow(raio, 2);

double perimetroCirculo(double raio) => 2 * math.pi * raio;

void calcularRaios(List<double> raios) {
  for (final raio in raios) {
    final area = areaCirculo(raio);
    final perimetro = perimetroCirculo(raio);

    print(
      'Raio: $raio, area: ${area.toStringAsFixed(2)}, '
      'perimetro: ${perimetro.toStringAsFixed(2)}.',
    );
  }
}