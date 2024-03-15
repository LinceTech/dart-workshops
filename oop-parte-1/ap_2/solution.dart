void main() {
  // Criar retângulo
  final retangulo = Retangulo(5.0, 3.0);

  // Calcular area
  double area = retangulo.calcularArea();

  // Imprimir area
  print("Área do retângulo: $area");
}

// Definição da classe
class Retangulo {
  // Construtor padrao
  Retangulo(this.largura, this.altura);

  // Atributos
  final double largura;
  final double altura;

  // A = altura * largura
  double calcularArea() {
    return altura * largura;
  }
}