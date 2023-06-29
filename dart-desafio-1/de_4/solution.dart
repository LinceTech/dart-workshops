import 'dart:math' as math;

const nomes = [
  'Ana',
  'Maria',
  'Francisco',
  'Joao',
  'Pedro',
  'Gabriel',
  'Rafaela',
  'Marcio',
  'Jose',
  'Carlos',
  'Patricia',
  'Helena',
  'Camila',
  'Mateus',
  'Gabriel',
  'Samuel',
  'Karina',
  'Antonio',
  'Daniel',
  'Joel',
  'Cristiana',
  'Sebastiao',
  'Paula'
];

const sobrenomes = [
  'Silva',
  'Souza',
  'Almeida',
  'Azevedo',
  'Braga',
  'Barros',
  'Campos',
  'Cardoso',
  'Costa',
  'Teixeira',
  'Santos',
  'Rodrigues',
  'Ferreira',
  'Alves',
  'Pereira',
  'Lima',
  'Gomes',
  'Ribeiro',
  'Carvalho',
  'Lopes',
  'Barbosa'
];

void main() {
  final random = math.Random();
  final nomeGerado = nomes[random.nextInt(nomes.length)];
  final sobrenomeGerado = sobrenomes[random.nextInt(sobrenomes.length)];
  final nomeCompletoGerado = '$nomeGerado $sobrenomeGerado';

  print('Nome gerado: $nomeCompletoGerado');
}