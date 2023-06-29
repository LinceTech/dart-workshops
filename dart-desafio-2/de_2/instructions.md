## DE2 - Refatoraca de programas, iniciante

**IMPORTANTE**: para a realizacao desse exercicio, nao deve ser utilizado dynamic.

**Objetivo do programa**: fazer a simulacao de uma **pessoa** que consome **calorias** provenientes de **produtos**, os
produtos sao fornecidos por **fornecedores**.

Considerando o objetivo do programa, efetue uma refatoracao utilizando os conceitos de orientacao a objetos, completando
os requisitos especificados abaixo, utilizando comentarios para demarcar no codigo onde os objetivos foram atingidos.

1. Criar novos fornecedores: sanduiches, bolos, saladas, petiscos, ultra-caloricos
2. Alterar o programa para escolher um novo fornecedor aleatoriamente para cada "refeicao"
3. Nas informacoes da pessoa, adicione uma logica "status" do nivel de calorias (dica: utilizar um enum)
    1. Calorias <= 500 : Deficit extremo de calorias;
    2. 500 > Calorias <= 1800 : Deficit de calorias;
    3. 1800 > Calorias <= 2500 : Pessoa esta satisfeita;
    4. Calorias > 2500 : Excesso de calorias;
4. Altere o programa para definir um nivel inicial de calorias aleatoriamente ao instanciar uma pessoa;
5. Altere o programa para se basear no nivel de calorias para definir se a pessoa precisa de refeicoes
6. Imprima o numero de refeicoes realizadas nas informacoes da pessoa;

Tempo do desafio: __60 minutos__
