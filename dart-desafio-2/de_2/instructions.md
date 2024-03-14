## DE2 - Refatoração de programas, iniciante

**IMPORTANTE**: para a realização desse exercício, nao deve ser utilizado dynamic.

**Objetivo do programa**: fazer a simulação de uma **pessoa** que consome **calorias** provenientes de **produtos**, os
produtos sao fornecidos por **fornecedores**.

Considerando o objetivo do programa, efetue uma refatoração utilizando os conceitos de orientação a objetos, completando
os requisitos especificados abaixo, utilizando comentários para demarcar no código onde os objetivos foram atingidos.

1. Criar novos fornecedores: sanduíches, bolos, saladas, petiscos, ultra-calóricos
2. Alterar o programa para escolher um novo fornecedor aleatoriamente para cada "refeição"
3. Nas informações da pessoa, adicione uma lógica "status" do nível de calorias (dica: utilizar um enum)
    1. Calorias <= 500 : Deficit extremo de calorias;
    2. 500 > Calorias <= 1800 : Deficit de calorias;
    3. 1800 > Calorias <= 2500 : Pessoa está satisfeita;
    4. Calorias > 2500 : Excesso de calorias;
4. Altere o programa para definir um nível inicial de calorias aleatoriamente ao instanciar uma pessoa;
5. Altere o programa para se basear no nível de calorias para definir se a pessoa precisa de refeições
6. Imprima o número de refeições realizadas nas informações da pessoa;

Tempo do desafio: __60 minutos__
