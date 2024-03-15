# Respostas

### 1 - API de rastreio

```dart
import 'dart:async';

Future<String> consultarAPI(String codigoRastreamento) async {
  await Future.delayed(Duration(seconds: 2));

  // Simulacao de consulta a API com código de rastreamento
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

Future<void> main() async {
  print('Inicio');
  await verificarStatusEntrega('ABC123');
  await verificarStatusEntrega('XYZ789');
  await verificarStatusEntrega('DEF456');
  print('Fim');
}
```

___

### 2 - Download de imagens

```dart
import 'dart:async';

Future<void> main() async {
  List<String> urls = [
    'https://example.com/imagem1.jpg',
    'https://example.com/imagem2.jpg',
    'https://example.com/imagem3.jpg',
  ];

  await baixarImagens(urls);
}

Future<void> baixarImagem(String url) async {
  await Future.delayed(Duration(seconds: 2));

  // Simulação de download da imagem
  print('Imagem $url baixada com sucesso!');
}

Future<void> baixarImagens(List<String> urls) async {
  print('Baixando imagens...');

  for (String url in urls) {
    await baixarImagem(url);
  }

  print('Download concluído com sucesso!');
}
```

___

### 3 - Foguete

```dart
Future<void> main() async {
  print('Iniciando lançamento');

  var contador = 5;

  while (contador > 0) {
    await contagem(contador);

    contador--;
  }

  print('Foguete lançado!');
}

Future<void> contagem(int value) async {
  print('$value');
  await Future.delayed(
    Duration(
      seconds: 1,
    ),
        () {},
  );
}
```

___

### 4 - Busca de dados

```dart
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
```

___
