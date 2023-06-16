void main() {
  // Criando instancia de gato
  final gato = Gato();
  gato.comer();
  gato.beber();
  gato.miar();
}

// Definindo tipo abstrato
abstract class Animal {
  void comer() {
    print('O animal esta comendo.');
  }

  void beber() {
    print('O animal esta bebendo.');
  }
}

// Definindo tipo concreto
class Gato extends Animal {
  void miar() {
    print('O gato esta miando.');
  }
}