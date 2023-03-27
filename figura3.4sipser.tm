// Input: string de 0s
// Ouput: aceita strings tem comprimento que é potencia de 2
// Example:
//     Aceita: 0, 00, 0000, 00000000, 0000000000000000,...
//     Rejeita: string vazia, 000, 000000, ...
// Está é uma implementação __textual__ da máquina M2 na página 131 da segunda edição
//
// Na MT de Sipser a fita é infinita em um das direções.
// NA MT da página https://turingmachinesimulator.com/ a fita é infinita em ambas as
//     direções.

name: Figura 3.4, Sipser, 2a. edição
init: q1
accept: qaccept

//-------------------------
// q1
q1,_
qreject,_,-

q1,x
qreject,x,-

q1,0 // Sipser marca o início da string com _
q2,_,>

//-------------------------
// q2
q2,x
q2,x,>

q2,0
q3,x,>

q2,_
qaccept,_,-

//-------------------------
// q3
q3,x
q3,x,>

q3,0
q4,0,>

q3,_
q5,_,<

//-------------------------
// q4
q4,x
q4,x,>

q4,0
q3,x,>

q4,_
qreject,_,-

//--------------------------
q5,0
q5,0,<

q5,x
q5,x,<

q5,_
q2,_,>




