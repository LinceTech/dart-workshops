void main() {
  // Declarando as variaveis
  String nome = "John";
  String sobrenome = "Doe";
  int idade = 18;
  bool ativo = true;
  double peso = 72.8;
  String? nacionalidade = null;

  // Imprimir no console, com a formatação especificada
  print("Nome completo: $nome $sobrenome");

  if (idade >= 18) {
    print("Idade: $idade (maior de idade)");
  } else {
    print("Idade: $idade (menor de idade)");
  }

  if (ativo) {
    print("Situacao: Ativo");
  } else {
    print("Situacao: Inativo");
  }

  print("Peso: ${peso.toStringAsFixed(2)}");

  if (nacionalidade != null) {
    print("Nacionalidade: $nacionalidade");
  } else {
    print("Nacionalidade: Nao informada");
  }
}
