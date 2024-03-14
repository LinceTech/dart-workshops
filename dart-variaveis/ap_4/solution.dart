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
