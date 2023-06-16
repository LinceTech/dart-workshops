// Incluir import para gerar numeros aleatorios
import 'dart:math';

void main() {
  // Criar gerador de numeros
  final random = Random();

  // Utilizando o construtor [List.generate] para criar as listas
  final lista1 = List.generate(5, (_) => random.nextInt(100));
  final lista2 = List.generate(5, (_) => random.nextInt(100));

  // Imprimir as listas
  imprimirLista(lista1);
  imprimirLista(lista2);

  final lista3 = somarListas(lista1, lista2);
  imprimirLista(lista3);
}

// Funcao que imprime uma lista
void imprimirLista(List<int> lista) {
  if (lista.length > 0) {
    print('Lista: ${lista.join(', ')}');
  } else {
    print('Lista vazia');
  }
}

// Funcao que recebe duas listas, e retorna a soma das casas da lista
List<int> somarListas(List<int> lista1, List<int> lista2) {
  if (lista1.length != lista2.length) {
    return [];
  }

  final resultado = <int>[];

  // Passar por todos os itens das listas
  for (var indice = 0; indice < lista1.length; indice++) {
    // Somar os valores das duas listas
    final valorLista1 = lista1[indice];
    final valorLista2 = lista2[indice];
    final soma = valorLista1 + valorLista2;

    print('${valorLista1}+${valorLista2}');

    // Adicionar soma na lista de itens para retornar
    resultado.add(soma);
  }

  return resultado;
}
