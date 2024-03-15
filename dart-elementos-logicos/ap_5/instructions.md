## Simplificando comparações

O programa base deve apenas retornar o valor recebido. Reescreva o código sem utilizar `if-else`

### Programa base

```dart
import 'dart:math';

void main() {
  final random = Random();
  final opcao = random.nextInt(6);

  if (opcao == 0) {
    print('Opcao invalida');
    return;
  }

  if (opcao == 1) {
    print('Encontrado 1');
    return;
  }

  if (opcao == 2) {
    print('Encontrado 2');
    return;
  }

  if (opcao == 3) {
    print('Encontrado 3');
    return;
  }

  if (opcao == 4) {
    print('Encontrado 4');
    return;
  }

  if (opcao == 5) {
    print('Encontrado final');
    return;
  }

  if (opcao > 5) {
    print('Opcao invalida');
  }
}
```