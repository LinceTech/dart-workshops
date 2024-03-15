## API de rastreio

> Inicio  
> Status de entrega do pacote ...  
> Status de entrega do pacote ...  
> Status de entrega do pacote ...  
> Fim

### Programa base

```dart
import 'dart:async';

Future<String> consultarAPI(String codigoRastreamento) async {
  await Future.delayed(Duration(seconds: 2));

  // Simulação de consulta a API com código de rastreamento
  if (codigoRastreamento == 'ABC123') {
    return 'Em transito';
  } else if (codigoRastreamento == 'XYZ789') {
    return 'Entregue';
  } else if (codigoRastreamento == 'DEF456') {
    return 'Atrasado';
  } else {
    return 'Código de rastreamento invalido';
  }
}

Future<void> verificarStatusEntrega(String codigoRastreamento) async {
  String status = await consultarAPI(codigoRastreamento);
  print('Status de entrega do pacote $codigoRastreamento: $status');
}

void main() {
  print('Inicio');
  verificarStatusEntrega('ABC123');
  verificarStatusEntrega('XYZ789');
  verificarStatusEntrega('DEF456');
  print('Fim');
}
```