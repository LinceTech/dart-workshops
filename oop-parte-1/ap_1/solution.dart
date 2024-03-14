void main() {
  // Criando conta bancaria
  final conta = ContaBancaria(1000.0, "Joao");
  conta.depositar(500.0);
  conta.sacar(200.0);

  // Imprimir saldo
  print("Saldo atual: ${conta.saldo}");
}

// Definição da classe
class ContaBancaria {
  // Construtor padrao
  ContaBancaria(this.saldo, this.titular);

  // Atributos
  double saldo;
  String titular;

  // Metodo para incrementar valor da conta
  void depositar(double valor) {
    saldo += valor;
  }

  // Metodo para decrementar valor da conta
  void sacar(double valor) {
    if (valor <= saldo) {
      saldo -= valor;
    } else {
      print("Saldo insuficiente.");
    }
  }
}

