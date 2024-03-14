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
