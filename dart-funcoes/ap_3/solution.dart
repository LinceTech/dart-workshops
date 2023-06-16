import 'dart:math';

void main() {
  // Gerar raios aleatoriamente
  final random = Random();
  final raios = List.generate(10, (_) => random.nextDouble() * 99 + 1);

  // Chamando calculo de raios
  calcularRaios(raios);
}

// Calcula a area de um circulo
double areaCirculo(double raio) => pi * pow(raio, 2);

// Calcula o perimetro de um circulo
double perimetroCirculo(double raio) => 2 * pi * raio;

// Recebe uma lista de raios, e calcula a area e perimetro desses circulos
void calcularRaios(List<double> raios) {
  for (final raio in raios) {
    final area = areaCirculo(raio);
    final perimetro = perimetroCirculo(raio);

    print(
      'Raio: ${raio.toStringAsFixed(2)}, '
      'area: ${area.toStringAsFixed(2)}, '
      'perimetro: ${perimetro.toStringAsFixed(2)}.',
    );
  }
}
