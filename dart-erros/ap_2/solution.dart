void main() {
  try {
    programa(7);
    print("Entrada correta, voce inseriu um numero par");
  } on Exception catch (e) {
    // Imprimir a mensagem de erro
    print(e);
  }
}

// Programa que lanca erro caso receba um numero impar
void programa(int numero) {
  if (numero.isOdd) {
    throw Exception('Entrada invalida. Insira apenas numeros pares');
  }
}
