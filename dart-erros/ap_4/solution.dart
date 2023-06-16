void main() {
  try {
    // Definindo um nome arbitrario para o arquivo
    final nomeArquivo = 'bloco.txt';

    ArquivoTexto arquivoTexto = ArquivoTexto(nomeArquivo);
    arquivoTexto.abrir();
  } catch (e) {
    // Imprimir mensagem de erro
    print(e);
  } finally {
    print("Fim do programa");
  }
}

abstract class Arquivo {
  void abrir();
}

class ArquivoTexto implements Arquivo {
  ArquivoTexto(this.nome);

  final String nome;

  @override
  void abrir() {
    try {
      // Simula a abertura do arquivo
      throw Exception("Erro ao abrir o arquivo $nome");
    } catch (e) {
      print('Relancar a exception');
      rethrow;
    }
  }
}
