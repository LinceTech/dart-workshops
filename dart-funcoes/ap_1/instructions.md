## AP1 - Praticando funcoes

Crie um programa que atenda os requisitos abaixo:

- Inicialize duas listas com 5 numeros aleatorios entre 0 e 100
- Crie uma funcao receba uma lista como parametro e a imprima na seguinte formatacao `Lista: 10, 5, 39, 45, 1`
- Crie uma funcao que receba duas listas, e retorne uma nova lista de mesmo tamanho contendo a soma dos itens de mesmo
  indice nas duas listas iniciais (ver exemplo).
- Imprima as acoes realizadas e a lista final
- [Bonus] Validacoes:
    - Caso tente imprimir uma lista vazia, imprimir apenas `Lista vazia`
    - Caso as listas tenham tamanhos diferentes, retornar uma lista vazia

Exemplo considerando os dados abaixo:

| Lista 1 | Lista 2 | Acao  | Lista final |
|---------|---------|-------|-------------|
| 3       | 15      | 3+15  | 18          |
| 9       | 37      | 9+37  | 46          |
| 25      | 51      | 25+51 | 76          |
| 94      | 2       | 94+2  | 96          |

Resultado do programa:
> Lista: 3, 9, 25, 94  
> Lista: 15, 37, 51, 2  
> 3+15    
> 9+37  
> 25+51  
> 94+2  
> Lista: 18, 46, 76, 96