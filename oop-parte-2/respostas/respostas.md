# Respostas

### 1 - Gêneros musicais

```dart
import 'dart:math';

// Definindo gêneros musicais
enum GenerosMusicais {
  trap,
  pagode,
  samba,
  rock,
  pop,
  rap,
}

void main() {
  // Gerar número aleatério
  final numeroAleatorio = Random().nextInt(GenerosMusicais.values.length);
  print(numeroAleatorio);

  // Pegar um valor do enum com base no número gerado
  final generoFavorito = GenerosMusicais.values[numeroAleatorio];
  switch (generoFavorito) {
    case GenerosMusicais.trap:
      print('Meu gênero musical preferido e o trap');
      break;
    case GenerosMusicais.pagode:
      print('Meu gênero musical preferido e o pagode');
      break;
    case GenerosMusicais.samba:
      print('Meu gênero musical preferido e o samba');
      break;
    case GenerosMusicais.rock:
      print('Meu gênero musical preferido e o rock');
      break;
    case GenerosMusicais.pop:
      print('Meu gênero musical preferido e o pop');
      break;
    case GenerosMusicais.rap:
      print('Meu gênero musical preferido e o rap');
      break;
  }
}
```

___

### 2 - Animais

```dart
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
```

___

### 3 - Classes abstratas

```dart
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
```

___

### 4 - Calculadora

```dart
import 'dart:math';

void main() {
  // Gerar número aleatório
  final random = Random();
  final numero = random.nextInt(100);

  // Realizar cálculo
  final resultado = Calculadora.dobro(numero);

  // Imprimindo resultado do cálculo
  print("O dobro do número $numero e: $resultado");
}

// Definindo classe abstrata
abstract class Calculadora {
  static int dobro(int numero) {
    return numero * 2;
  }
}
```

___
