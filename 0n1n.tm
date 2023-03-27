// Input: string de 0s e 1s
// Ouput: aceita strings da forma 0^n1^n
// Example:
//    aceita: 01, 0011, 000111, 00001111
//    rejeita: 0, 1, 10, 001, 011,

name: 0n1n
init: ini
accept: aceite


//===================================================
// Subrotina ini
//     anda sobre 0 ou mais as
ini,_         // aceita string vazia
aceite,_,-

ini,0       
procure_1,x,>

ini,1         // 1 é rejetada 
rejeite,1,-


//===================================================
// Subrotina procure_1

procure_1,_
um,_,<

procure_1,0
procure_1,0,>

procure_1,1
procure_1,1,>

procure_1,x
um,x,<

um,1   // é o primeiro 1 a ser marcado
marque_1,1,-

//===================================================
// Subrotina marque_1
//     
marque_1,_
rejeite,1,-

marque_1,x
aceite,x,-

marque_1,0
rejeite,0,-

marque_1,1
procure_0,x,<

//===================================================
// Subrotina procure_0

// procure_0,_ supérfluo

procure_0,0
procure_0,0,<

procure_0,1
procure_0,1,<

procure_0,x
zero,x,>

zero,0
marque_0,0,-

zero,x
aceite,x,-

//===================================================
// Subrotina marque_0
//     

// marque_0,_ supérfluo
// rejeite,_,-

// marque_0,x supérfluo
// aceite,x,-

marque_0,0
procure_1,x,>

marque_0,1
rejeite,1,-

