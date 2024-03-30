## Telefones

Utilizando os conceitos de orientação a objetos, complete o programa sem alterar o código ja existente, para que o
programa imprima aleatoriamente no console uma das tres saídas abaixo.


> [TELEFONE] Ligando para (47) 99876-5432...

> [CELULAR] Ligando para (47) 99876-5432...

> [ORELHÃO] Ligando para (47) 99876-5432...

Tempo do desafio: __10 minutos__

### Código base

```dart
// NAO PODE SER MODIFICADO
// -------------------------------------------------------------
import 'dart:math' as math;

void main() {
  final meioDeComunicacao = aleatorio();
  meioDeComunicacao.fazerLigacao('(47) 99876-5432');
}

MeioDeComunicacao aleatorio() {
  final meiosDeComunicacao = <MeioDeComunicacao>[
    Telefone(),
    Celular(),
    Orelhao(),
  ];

  final random = math.Random();

  return meiosDeComunicacao[random.nextInt(
    meiosDeComunicacao.length,
  )];
}

// -------------------------------------------------------------
// ADICIONAR IMPLEMENTACAO RESTANTE ABAIXO DESSA LINHA
// -------------------------------------------------------------

// ...

```