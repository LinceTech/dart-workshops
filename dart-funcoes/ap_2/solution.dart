import 'dart:math';

void main() {
  // Chamando as funções conforme especificação
  final resultado1 = funcaoA(funcaoB);
  final resultado2 = funcaoA(funcaoC);

  // Imprimir resultados
  print('A(B) = $resultado1');
  print('A(C) = $resultado2');
}

// Função A recebe outra função como parâmetro, e a executa duas vezes,
// retornando a soma das execuções.
int funcaoA(int Function(int) funcaoParametro) {
  final random = Random();
  final resultado1 = funcaoParametro(random.nextInt(100));
  final resultado2 = funcaoParametro(random.nextInt(100));
  final soma = resultado1 + resultado2;

  return soma;
}

// Função B retorna o parâmetro multiplicado por 2
int funcaoB(int parametro) {
  return parametro * 2;
}

// Função C retorno o resto da divisão do parâmetro por 2
int funcaoC(int parametro) {
  return parametro % 2;
}
