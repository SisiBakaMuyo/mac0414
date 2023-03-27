// Input: string de 0s 1s e #
// Ouput: aceita strings da forma u#v em que u e v sÃ£o string de 0s e 1s e u=v
// Example:
//      aceita:  # e 10101#10101
//      rejeita: 1010#1011, 010#1011 e 1010#101.
//
// EstÃ¡ Ã© uma implementaÃ§Ã£o caseira da mÃ¡quina M1 na pÃ¡gina 127 da segunda ediÃ§Ã£o do Sipser

name: strings iguais
init: qConsistencia0
accept: qAceita

//===================================================
// Subrotina Consistencia:
//     verifica tem o formato especificado
qConsistencia0,0
qConsistencia0,0,>

qConsistencia0,1
qConsistencia0,1,>

qConsistencia0,_
qRejeita,_,-

// achou um #    
qConsistencia0,#
qConsistencia1,#,>

// se encontrar outro # rejeita
qConsistencia1,0
qConsistencia1,0,>

qConsistencia1,1
qConsistencia1,1,>
    
qConsistencia1,#
qRejeita,#,-

// a entrada Ã© valida, volte atÃ© o inÃ­cio da string    
qConsistencia1,_  
qVolta,_,<

//----------------------------------------------------------
// Subrotina Volta:
//     volta cabeÃ§a atÃ© o primeiro sÃ­mbolo nÃ£o marcado da string
qVolta,0
qVolta,0,<    

qVolta,1
qVolta,1,<    

qVolta,y
qVolta,y,<    
    
qVolta,x
qMarcaSimbolo,x,>
    
qVolta,#
qVolta,#,<    

qVolta,_
qMarcaSimbolo,_,>    

//----------------------------------------------------------
// Subrotina MarcaSimbolo:
//    Marca um sÃ­mbolo, memoriza o sÃ­mbolo marcado e passa o controle 
//    para a subrotina que procura o sÃ­mbolo correspondente depois de #
qMarcaSimbolo,0
qProcura0,x,>    

qMarcaSimbolo,1
qProcura1,x,>    

// todos os sÃ­mbolos foram marcados
qMarcaSimbolo,#
qSobrou,#,>

//----------------------------------------------------------
// Subrotina Procura0
//     procura o sÃ­mbolo # e leva na memoria que deve
//     marcar um 0 no lado direito de # 
qProcura0,0
qProcura0,0,>

qProcura0,1
qProcura0,1,>

qProcura0,#
qMarca0,#,>


//----------------------------------------------------------
// Subrotina Marca0:
//    procura um 0 depois de # um 0 para ser marcado
qMarca0,y    
qMarca0,y,>

qMarca0,1
qRejeita,1,-

qMarca0,_
qRejeita,_,-
    
qMarca0,0 // marca e volta
qVolta,y,<

//----------------------------------------------------------
// Subrotina Procura1
//     procura o sÃ­mbolo # e leva na memoria que deve
//     marcar um 1 no lado direito de # 
qProcura1,0
qProcura1,0,>

qProcura1,1
qProcura1,1,>

qProcura1,#
qMarca1,#,>


//--------------------------------------------------------
// Subrotina Marca1:
//    procura um 1 depois de # para ser marcado
qMarca1,y    
qMarca1,y,>

qMarca1,0
qRejeita,1,-

qMarca1,_
qRejeita,_,-
    
qMarca1,1
qVolta,y,<

//-------------------------------------------------------
// Subrotina Sobrou:
//     verifica se sobrou algum 0 ou 1 depois de #
//     que nÃ£o foi marcado
qSobrou,y
qSobrou,y,>

qSobrou,0
qRejeita,0,-    

qSobrou,1
qRejeita,1,-    

qSobrou,_
qAceita,_,-    
