void main() {
  // Criando lista original
  final listaOriginal = [
    'Dio',
    'Ozzy',
    'Max',
    'Joseph',
    'Jack',
    'Caesar',
    'Michael',
  ];

  // Remover item da lista
  final novaLista = removerElemento(
    lista: listaOriginal,
    elemento: 'Caesar',
  );

  // Imprimir lista atualizada
  for (var item in novaLista) {
    print('Item: $item');
  }
}

List<String> removerElemento({
  List<String>? lista,
  String? elemento,
}) {
  // Se a lista nao for nula, remove o element
  lista?.remove(elemento);

  // Se a lista for nula, retorna uma nova lista vazia
  return lista ?? [];
}
