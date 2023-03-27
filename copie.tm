// Isis Ardisson Logullo  nUSP 7577410
// O numero de passos é Θ(n²), pois ele copia o simbolo e tem que andar sempre n+1 para copia-lo 
// e depois mais n+1 para voltar, entao cada simbolo de w anda 2n+2, sendo no total n(2n+2) somando ao fim 2n+1 para limpar.

name: Copie String
init: qConsistencia
accept: qAceita

//==========================================================
// Verifica a entrada


qConsistencia,a
qConsistencia,a,>

qConsistencia,b
qConsistencia,b,>

//marca o fim com um # e volta pro inicio
qConsistencia,_
qVolta,#,<


//================================================================================
// Volta cabeca ate o primeiro simbolo nao marcado da string


qVolta,a
qVolta,a,<    

qVolta,b
qVolta,b,<      
    
qVolta,A
qMarcaSimbolo,A,>

qVolta,B
qMarcaSimbolo,B,>
    
qVolta,#
qVolta,#,<    

qVolta,_
qMarcaSimbolo,_,>    


//===============================================================================
// Marca um simbolo, memoriza o simbolo marcado e copia para depois do #


qMarcaSimbolo,a
qCopiaA,A,>    

qMarcaSimbolo,b
qCopiaB,B,>    

// todos os simbolos foram marcados
qMarcaSimbolo,#
qLimpaMarcacao,#,<


//================================================================================
// Procura o simbolo # e leva na memoria que deve
//     copiar um a no lado direito de # 

qCopiaA,a
qCopiaA,a,>

qCopiaA,b
qCopiaA,b,>

qCopiaA,#
qEscreveA,#,>


//=================================================================================
// Escreve um a depois de # no proximo espaco vazio

qEscreveA,a    
qEscreveA,a,>

qEscreveA,b
qEscreveA,b,>

qEscreveA,_   //copia e volta
qVolta,a,<
    

//=================================================================================
// Procura o simbolo # e leva na memoria que deve
//     copiar um b no lado direito de #

qCopiaB,a
qCopiaB,a,>

qCopiaB,b
qCopiaB,b,>

qCopiaB,#
qEscreveB,#,>


//=================================================================================
// Escreve um b depois de # no proximo espaco vazio


qEscreveB,a
qEscreveB,a,>

qEscreveB,b
qEscreveB,b,>

qEscreveB,_   //copia e volta
qVolta,b,<
    

//=================================================================================
// Limpa as marcacoes feitas antes de #


qLimpaMarcacao,a
qLimpaMarcacao,a,<

qLimpaMarcacao,b
qLimpaMarcacao,b,<    

qLimpaMarcacao,#
qLimpaMarcacao,#,<    

qLimpaMarcacao,A
qLimpaMarcacao,a,<

qLimpaMarcacao,B
qLimpaMarcacao,b,<

qLimpaMarcacao,_
qAceita,_,-    
