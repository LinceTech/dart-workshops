## AP4 - Simular criacao de arquivos

1. Crie uma interface chamada `Arquivo` que declare um metodo abstrato chamado `abrir`.
2. Em seguida, crie uma classe chamada `ArquivoTexto` que implemente a interface `Arquivo`.
3. A classe `ArquivoTexto` deve ter um atributo privado chamado `nome` que representa o nome do arquivo.
4. Implemente o metodo `abrir` na classe `ArquivoTexto` para simular a abertura do arquivo.
5. No entanto, inclua um bloco try-catch dentro do metodo para tratar possiveis erros ao abrir o arquivo.
6. Em caso de erro, lance novamente:
   > Erro ao abrir o arquivo $nome
7. No programa principal, chame o programa passando um nome arbitrario para o arquivo.
8. Utilize um bloco try-catch para tratar possiveis erros durante a leitura do nome do arquivo.
9. Se ocorrer um erro, exiba a mensagem:
   > Entrada invalida. Digite um nome valido.`
10. Caso contrario, crie um objeto da classe `ArquivoTexto` com o nome informado e chame o metodo `abrir`.
11. No bloco catch do programa principal, utilize o rethrow para relancar a excecao lancada pelo metodo `abrir`.
12. Por fim, exiba a mensagem `Fim do programa` ao final do programa.