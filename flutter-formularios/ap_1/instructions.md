# EF3 - Exercicio pratico Flutter

Antes de comecar a programar, crie um novo projeto no git chamado "academy_pratica_f3" para salvar seu progresso. Para
cada exercicio realizado, crie um novo arquivo chamado _"ef3_ap[**NUMERO DA ATIVIDADE**].dart"_, ex:

- academy_pratica_f3
  - ef3_ap1.dart

## AP1 - Cores aleatorias

Crie um aplicativo com um formulario, com as seguintes caracteristicas:

#### Campos necessarios

- **Nome**:
  - Nao pode ser vazio
  - Nao pode ter menos de 3 letras
  - Precisa comecar com uma letra maiuscula
- **Idade**:
  - Precisa ser um numero valida
  - Precisa ser maior ou igual a 18
- **Indicador de inativo**

O formulario precisa de um botao `Salvar`. O botao de salvar somente atualiza os dados caso o formulario seja valido.

Os dados salvos no formulario devem ser mostrados abaixo do formulario, destacados em uma area colorida de acordo com o
indicador de `inativo` (inativo deve ser cinza, caso contrario deve ser verde).

Caso existam dados invalidos no formulario, deve ser exibida a mensagem de erro abaixo do campo com os dados invalidos.