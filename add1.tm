// Input: string de 0s e 1s representando um número binário não negativo
// Ouput: o resultado da adição desse número com 1
//        O resultado fica na fita
// Example: 10101 devolve 10110
//

name: add1
init: qMenosSignificativo
accept: qPare

//===================================================
// Subrotina MenosSignificativo
//     posiciona a cabeca da fita sobre o dígito menos significativo 
qMenosSignificativo,0
qMenosSignificativo,0,>

qMenosSignificativo,1
qMenosSignificativo,1,>

qMenosSignificativo,_
qAdicione1,_,<

//===================================================
// Subrotina Adicione1
//    a partir do dígito menos significativo cuida do "vai um"
//    até concluir a adição
qAdicione1,1
qAdicione1,0,<

qAdicione1,0
qPare,1,-

qAdicione1,_
qPare,1,-

