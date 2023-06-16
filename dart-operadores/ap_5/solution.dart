void main() {
  // Inicializando o mapa
  final mapa = {
    "Nelson": null,
    "Jane": null,
    "Jack": 16,
    "Rupert": 37,
    "Andy": 13,
    "Kim": 27,
    "Robert": 31,
  };

  for (final nome in mapa.keys) {
    // Pegar a idade da pessoa
    final idade = mapa[nome];

    // Imprimir a resposta
    print('$nome - ${idade ?? 'idade nao informada'}');
  }
}
