## Download de imagens

Complete o programa base para que o mesmo efetue download das imagens especificadas e retorne ao usuário o progresso
da execução, por exemplo:

```
Baixando imagens...  
Imagem <imagem1> baixada com sucesso!  
Imagem <imagem2> baixada com sucesso!  
Imagem <imagem3> baixada com sucesso!  
Download concluído!
```

### Programa base

```dart
Future<void> main() async {
  List<String> urls = [
    'https://example.com/imagem1.jpg',
    'https://example.com/imagem2.jpg',
    'https://example.com/imagem3.jpg',
  ];

  await baixarImagens(urls);
}
```