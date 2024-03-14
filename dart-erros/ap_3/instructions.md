## AP3 - Area do retângulo

1. Crie uma interface chamada `Forma` que declare um método abstrato chamado `calcularArea`
2. Em seguida, crie uma classe chamada `Retangulo` que implemente a interface `Forma`
3. A classe `Retangulo` deve ter dois atributos privados: `base` e `altura`
4. No construtor da classe `Retangulo`, os valores da base e altura devem ser passados como parâmetros
5. Caso o Retângulo seja inicializado com uma `base` ou `altura` menor ou igual a zero, lance uma exception:
   > Exception: Dimensões invalidas, informe apenas valores positivos maiores que zero
6. Implemente o método `calcularArea` na classe `Retangulo`. Area do retângulo = `base * altura`
7. Utilize um bloco try-catch para tratar erros durante na execução do programa
8. Inicialize um retângulo com números gerados aleatoriamente, entre 0 e 99
9. Imprima o valor da area do retângulo:
   > Area do retângulo: 35.59

