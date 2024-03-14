void main() {
  // Inicializando lista
  final textos = [
    '10',
    '2XXL7',
    'JOJ0',
    '99',
    '381',
    'AD44',
    '47',
    '2B',
    '123',
    '78'
  ];

  // Convertendo lista para números
  final numeros = converterLista(textos);

  // Imprimir a lista de números
  print('Lista convertida: ${numeros.join(', ')}');
}

List<int> converterLista(List<String> textos) {
  final lista = <int>[];

  for (var texto in textos) {
    // Tentamos converter o texto para número
    int? numero = int.tryParse(texto);

    // Se o número for null, mudamos para 0 (zero)
    numero ??= 0;

    // Incluir número convertido na lista
    lista.add(numero);
  }

  return lista;
}
