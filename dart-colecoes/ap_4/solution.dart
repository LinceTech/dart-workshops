void main() {
  // Definindo o mapa de estados
  final estados = {
    'SC': ['Gaspar', 'Blumenau', 'Florianopolis'],
    'PR': ['Curitiba', 'Cascavel', 'Foz do Iguacu'],
    'SP': ['Sao Paulo', 'Guarulhos', 'Campinas'],
    'MG': ['Belo Horizonte', 'Juiz de Fora', 'Berlinda'],
  };

  // Imprimir a lista de siglas dos estados
  print('Estados: ${estados.keys.join(' ; ')}');

  // Pegar lista das cidades de Santa Catarina
  final santaCatarina = estados['SC']!;

  // Ordenar as cidades em ordem alfabetica
  santaCatarina.sort();

  // Imprimir as cidades de Santa Catarina
  print('Cidades de SC: ${santaCatarina.join(' ; ')}');

  // Lista para organizar os dados para imprimir
  final cidadesComSigla = [];

  // Passar por todos os estados cadastrados
  for (var siglaEstado in estados.keys) {
    // Coletando as cidades do estado
    final cidadesDoEstado = estados[siglaEstado]!;

    // Passando por todas as cidades do estados
    for (var cidade in cidadesDoEstado) {
      cidadesComSigla.add('$cidade - $siglaEstado');
    }
  }

  // Ordenar em ordem alfabetica
  cidadesComSigla.sort();

  print('-------------------------------------------------------------------');

  // Imprimir os itens da lista
  for (var item in cidadesComSigla) {
    print(item);
  }

  print('-------------------------------------------------------------------');
}
