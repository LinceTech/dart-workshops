## AP3 - Area do retangulo

1. Crie uma interface chamada `Forma` que declare um metodo abstrato chamado `calcularArea`
2. Em seguida, crie uma classe chamada `Retangulo` que implemente a interface `Forma`
3. A classe `Retangulo` deve ter dois atributos privados: `base` e `altura`
4. No construtor da classe `Retangulo`, os valores da base e altura devem ser passados como parametros
5. Caso o Retangulo seja inicializado com uma `base` ou `altura` menor ou igual a zero, lance uma exception:
   > Exception: Dimensoes invalidas, informe apenas valores positivos maiores que zero
6. Implemente o metodo `calcularArea` na classe `Retangulo`. Area do retangulo = `base * altura`
7. Utilize um bloco try-catch para tratar erros durante na execucao do programa
8. Inicialize um retangulo com numeros gerados aleatoriamente, entre 0 e 99
9. Imprima o valor da area do retangulo:
   > Area do retangulo: 35.59

