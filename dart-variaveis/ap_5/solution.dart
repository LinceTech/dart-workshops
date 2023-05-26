void main() {
  const pessoa = Pessoa("John", "Doe", 18, true, 72.8, null);
  print(pessoa.toString());
}

class Pessoa {
  const Pessoa(
    this.nome,
    this.sobrenome,
    this.idade,
    this.ativo,
    this.peso,
    this.nacionalidade,
  );

  // Declarando as variaveis
  final String nome;
  final String sobrenome;
  final int idade;
  final bool ativo;
  final double peso;
  final String? nacionalidade;

  @override
  String toString() {
    var imprimirFormatado = "";

    // Imprimir no console, com a formatação especificada
    imprimirFormatado += "Nome completo: $nome $sobrenome\n";

    if (idade >= 18) {
      imprimirFormatado += "Idade: $idade (maior de idade)\n";
    } else {
      imprimirFormatado += "Idade: $idade (menor de idade)\n";
    }

    if (ativo) {
      imprimirFormatado += "Situacao: Ativo\n";
    } else {
      imprimirFormatado += "Situacao: Inativo\n";
    }

    imprimirFormatado += "Peso: ${peso.toStringAsFixed(2)}\n";

    if (nacionalidade != null) {
      imprimirFormatado += "Nacionalidade: $nacionalidade\n";
    } else {
      imprimirFormatado += "Nacionalidade: Nao informada\n";
    }

    return imprimirFormatado;
  }
}
