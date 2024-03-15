void main() {
  // Lista de anos para validar
  final anos = [2016, 1988, 2000, 2100, 2300, 1993];

  // Verificar todos os anos
  for (var ano in anos) {
    print(ehAnoBissexto(ano)
        ? 'O ano $ano eh bissexto'
        : 'O ano $ano nao eh bissexto');
  }
}

bool ehAnoBissexto(int ano) {
  if (ano % 100 == 0) {
    // Anos terminando em 00 precisam ser divisíveis por 400 para serem bissexto
    return (ano % 400) == 0;
  } else {
    // Anos nao terminando em 00 precisam ser divisíveis por 4 para serem bissexto
    return (ano % 4) == 0;
  }
}
