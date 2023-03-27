// Input: string de as e bs
// Ouput: aceita strings da forma a^*b^*
// Example:
//    aceita: b. aabb, bbb, aaabbb
//    rejeita: abab, ba

name: AsBs
init: qA
accept: qAceita

//===================================================
// Subrotina qA
//     anda sobre 0 ou mais as
qA,_           // aceita string vazia
qAceita,_,-

qA,a           // anda sobre as
qA,a,>

qA,b           // um b sem um a 
qB,b,>

//===================================================
// Subrotina qB
//     anda sobre bs 
qB,_
qAceita,_,-

qB,a
qRejeita,a,-

qB,b
qB,b,>

