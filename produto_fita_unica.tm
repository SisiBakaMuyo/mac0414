// Isis Ardisson Logullo  nUSP 7577410
// o numero de passos eh O(n²). Como i * j = k, então temos que percorrer a fita num looping com basicamente um for dentro do outro.
// como é o produto, basicamente temos que andar com passos essa multiplicacao. 

name: Produto
init: qConsistencia
accept: qAceita

//==========================================================
// Verifica a entrada

qConsistencia,a
qConsistenciaA,a,>

qConsistencia,b
qConsistenciaB,b,>

qConsistencia,c
qConsistenciaC,c,>

qConsistenciaA,a
qConsistenciaA,a,>

qConsistenciaA,b
qConsistenciaAB,b,>

qConsistenciaA,c
qConsistenciaAC,c,>

qConsistenciaAB,a
qConsistenciaAB,a,>

qConsistenciaAB,b
qConsistenciaAB,b,>

qConsistenciaAB,c
qConsistenciaABC,c,>

qConsistenciaABC,a
qConsistenciaABC,a,>

qConsistenciaABC,b
qConsistenciaABC,b,>

qConsistenciaABC,c
qConsistenciaABC,c,>

qConsistenciaABC,_
qVolta,_,<

//====================================================================
// volta pro inicio

qVolta,a
qVolta,a,<

qVolta,b
qVolta,b,<

qVolta,c
qVolta,c,<

qVolta,_
qMarcaA,_,>

//========================================================================
// marca a

qMarcaA,a
qProcuraB,A,>

qMarcaA,b
qConfirmaC,b,>

qProcuraB,a
qProcuraB,a,>

qProcuraB,b
qProcuraC,B,>

//========================================================================
// marca b e c num vai e vem, nao pode sobrar b

qProcuraC,b
qProcuraC,b,>

qProcuraC,C
qProcuraC,C,>

qProcuraC,c
qVoltaB,C,<

qProcuraC,_
qSobrouB,_,<

qSobrouB,C
qSobrouB,C,<

qSobrouB,b
qRejeita,b,-

qSobrouB,B
qLimpaB,b,<

qProcuraB,C
qProcuraB,C,<

qProcuraB,B
qLimpaB,b,<

qLimpaB,B
qLimpaB,b,<

qLimpaB,a
qLimpaB,a,<

qLimpaB,A
qMarcaA,A,>

qVoltaB,C
qVoltaB,C,<

qVoltaB,b
qVoltaB,b,<

qVoltaB,B
qMarcaB,B,>

qMarcaB,b
qProcuraC,B,>

qMarcaB,C
qLimpaB,C,<

//==================================================================
// confirma se todo c foi marcado

qConfirmaC,b
qConfirmaC,b,>

qConfirmaC,C
qConfirmaC,C,>

qConfirmaC,c
qRejeita,c,-

qConfirmaC,_
qAceita,_,-






