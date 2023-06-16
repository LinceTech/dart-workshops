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

  // Convertendo lista para numeros
  final numeros = converterLista(textos);

  // Imprimir a lista de numeros
  print('Lista convertida: ${numeros.join(', ')}');
}

List<int> converterLista(List<String> textos) {
  final lista = <int>[];

  for (var texto in textos) {
    // Tentamos converter o texto para numero
    int? numero = int.tryParse(texto);

    // Se o numero for null, mudamos para 0 (zero)
    numero ??= 0;

    // Incluir numero convertido na lista
    lista.add(numero);
  }

  return lista;
}
