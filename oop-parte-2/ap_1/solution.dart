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