## Busca de pessoas

O programa base faz a busca de pessoas conforme o mes de nascimento. Efetue a refatoração do programa utilizando as
estruturas de coleção adequadas para reduzir o número de iterações realizados do programa.

**IMPORTANTE**: para a realização desse exercício, nao deve ser utilizado dynamic.

Tempo do desafio: __30 minutos__

### Código base

```dart
void main() {
  final controleDePessoas = ControleDePessoas();

  // Cadastrando pessoas no sistema
  controleDePessoas
    ..cadastrarPessoa(Pessoa('Jose', Mes.abril))
    ..cadastrarPessoa(Pessoa('Arthur', Mes.agosto))
    ..cadastrarPessoa(Pessoa('Joao', Mes.abril))
    ..cadastrarPessoa(Pessoa('Jesse', Mes.dezembro))
    ..cadastrarPessoa(Pessoa('Roberta', Mes.fevereiro))
    ..cadastrarPessoa(Pessoa('Carla', Mes.fevereiro))
    ..cadastrarPessoa(Pessoa('Thania', Mes.agosto))
    ..cadastrarPessoa(Pessoa('Rafaela', Mes.marco))
    ..cadastrarPessoa(Pessoa('Yuri', Mes.junho))
    ..cadastrarPessoa(Pessoa('Jonas', Mes.setembro))
    ..cadastrarPessoa(Pessoa('Elias', Mes.outubro))
    ..cadastrarPessoa(Pessoa('Abel', Mes.maio))
    ..cadastrarPessoa(Pessoa('Danilo', Mes.abril))
    ..cadastrarPessoa(Pessoa('Jonathan', Mes.abril))
    ..cadastrarPessoa(Pessoa('Joseph', Mes.setembro))
    ..cadastrarPessoa(Pessoa('Abdul', Mes.janeiro))
    ..cadastrarPessoa(Pessoa('Jean', Mes.abril));

  // Passar por todos os meses com pessoas, e imprimir os nomes das pessoas
  for (final mes in controleDePessoas.mesesComPessoas) {
    print('\n${mes.name}');

    for (final pessoa in controleDePessoas.pessoasPorMes(mes)) {
      print(' > ${pessoa.nome}');
    }
  }
}

enum Mes {
  janeiro,
  fevereiro,
  marco,
  abril,
  maio,
  junho,
  julho,
  agosto,
  setembro,
  outubro,
  novembro,
  dezembro,
}

class Pessoa {
  Pessoa(this.nome, this.mesDeNascimento);

  final String nome;
  final Mes mesDeNascimento;
}

class ControleDePessoas {
  final _pessoas = <Pessoa>[];

  /// Cadastra uma pessoa no sistema
  void cadastrarPessoa(Pessoa pessoa) => _pessoas.add(pessoa);

  /// Retorna a lista de meses com pessoas cadastradas
  List<Mes> get mesesComPessoas {
    final meses = <Mes>{};
    for (final pessoa in _pessoas) {
      if (!meses.contains(pessoa.mesDeNascimento)) {
        meses.add(pessoa.mesDeNascimento);
      }
    }
    return meses.toList()..sort((a, b) => a.index.compareTo(b.index));
  }

  /// Retorna a lista de pessoas que nasceram no [mes] especificado
  List<Pessoa> pessoasPorMes(Mes mes) {
    final pessoas = <Pessoa>[];
    for (final pessoa in _pessoas) {
      if (pessoa.mesDeNascimento == mes) {
        pessoas.add(pessoa);
      }
    }
    return pessoas;
  }
}
```