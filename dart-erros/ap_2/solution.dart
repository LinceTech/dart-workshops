void main() {
  try {
    programa(7);
    print("Entrada correta, voce inseriu um número par");
  } on Exception catch (e) {
    // Imprimir a mensagem de erro
    print(e);
  }
}

// Programa que lanca erro caso receba um número impar
void programa(int numero) {
  if (numero.isOdd) {
    throw Exception('Entrada invalida. Insira apenas números pares');
  }
}
