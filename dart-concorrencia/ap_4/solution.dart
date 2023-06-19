// resposta
void main() async {
  print('Iniciando busca de dados');

  print('Buscando dados...');
  await buscarDados();

  print('Busca finalizada');
}

Future<void> buscarDados() async {
  await Future.delayed(
    Duration(seconds: 5),
        () {},
  );
}
