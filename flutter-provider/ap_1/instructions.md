# EF6 - exercício pratico Flutter

Antes de começar a programar, crie um novo projeto no git chamado "academy_pratica_f6" para salvar seu progresso. Para
cada exercício realizado, crie um novo arquivo chamado _"ef6_ap[**NUMERO DA ATIVIDADE**].dart"_, ex:

- academy_pratica_f6
    - ef6_ap1.dart

## AP1 - Lista de cores

Crie um aplicativo em Flutter que permita o usuário:

- Ver a lista de pessoas cadastradas
- Incluir novas pessoas na lista
- Filtrar a lista de pessoas cadastradas
- Alterar os dados de uma pessoa cadastrada
- Excluir pessoa cadastrada

Para cada pessoa, e necessario incluir no formulario os seguintes dados:

- Nome completo
- E-mail
- Telefone
- Link do GitHub
- Tipo sanguineo (Opcoes: "A+", "A-", "B+", "B-", "O+", "O-", "AB+", "AB-")

Na listagem de pessoas, devem aparecer todos os dados da pessoa. Também deve ser considerado o tipo sanguineo da pessoa,
e alterada a cor do item na lista, conforme a lista abaixo:

- A+ (Azul)
- A- (Vermelho)
- B+ (Roxo)
- B- (Laranja)
- O+ (Verde)
- O- (Amarelo)
- AB+ (Ciano)
- AB- (Branco)

O aplicativo precisa ser dividido entre 5 telas:

- Tela inicial (com botoes que direcione para as demais telas)
- Tela de listagem de pessoas (filtro deve ser nessa tela)
- Tela de inclusao e edição de pessoas

Para desenvolver esse aplicativo, utilize o código base fornecido implementando um Provider para compartilhar o estado
da lista de pessoas entre as telas solicitadas. 