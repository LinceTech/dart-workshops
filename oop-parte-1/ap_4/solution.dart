import 'dart:math';

void main() {
  final random = Random();

  // Criar pessoa
  final pessoa = Pessoa();

  // Definindo os valores
  pessoa.nome = "Joao";
  pessoa.idade = random.nextInt(99) + 1;
  pessoa.altura = (random.nextDouble() * 1.3) + 1;

  // Imprimindo os valores
  print("Nome: ${pessoa.nome}");
  print("Idade: ${pessoa.idade}");
  print("Altura: ${pessoa.altura.toStringAsFixed(2)}");
}

// Definição da classe
class Pessoa {
  // Atributos
  String _nome = '';
  int _idade = 0;
  double _altura = 0.0;

  int get idade => _idade;

  set idade(int valor) {
    if (valor >= 0) {
      _idade = valor;
    } else {
      print("A idade deve ser um valor maior ou igual a zero.");
    }
  }

  String get nome => _nome;

  set nome(String valor) {
    _nome = valor;
  }

  double get altura => _altura;

  set altura(double valor) {
    _altura = valor;
  }
}