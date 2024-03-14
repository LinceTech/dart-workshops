void main() {
  // Criando animal
  final pato = Pato();

  // Executando métodos
  pato.comer();
  pato.voar();
}

// Definindo classe abstrata
abstract class Animal {
  void comer();
}

// Definindo classe abstrata
abstract class Voador {
  void voar();
}

// Definindo classe concreta
class Pato implements Animal, Voador {
  void comer() {
    print('O pato esta comendo.');
  }

  void voar() {
    print('O pato esta voando.');
  }
}