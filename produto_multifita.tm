// Isis Ardisson Logullo  nUSP 7577410
// o numero de passos eh O(n).
// Com mais fitas nao eh necessario usar o looping, acaba que copiando fica quase linear

name: Produto Multifita
init: qConsistencia
accept: qAceita

//==========================================================
// Verifica a entrada


qConsistencia,a,_,_
qConsistenciaA,a,_,_,>,-,-

qConsistencia,b,_,_
qConsistenciaB,b,_,_,>,-,-

qConsistencia,c,_,_
qConsistenciaC,c,_,_,>,-,-

qConsistenciaA,a,_,_
qConsistenciaA,a,_,_,>,-,-

qConsistenciaA,b,_,_
qConsistenciaAB,b,_,_,>,-,-

qConsistenciaA,c,_,_
qConsistenciaAC,c,_,_,>,-,-

qConsistenciaAB,a,_,_
qConsistenciaAB,a,_,_,>,-,-

qConsistenciaAB,b,_,_
qConsistenciaAB,b,_,_,>,-,-

qConsistenciaAB,c,_,_
qConsistenciaABC,c,_,_,>,-,-

qConsistenciaABC,a,_,_
qConsistenciaABC,a,_,_,>,-,-

qConsistenciaABC,b,_,_
qConsistenciaABC,b,_,_,>,-,-

qConsistenciaABC,c,_,_
qConsistenciaABC,c,_,_,>,-,-

qConsistenciaABC,_,_,_
qVolta,_,_,_,<,-,-

//====================================================================
// volta pro inicio

qVolta,a,_,_
qVolta,a,_,_,<,-,-

qVolta,b,_,_
qVolta,b,_,_,<,-,-

qVolta,c,_,_
qVolta,c,_,_,<,-,-

qVolta,_,_,_
qCopiaB,_,_,_,>,-,-

//=====================================================================
// copia todo b para segunda fita

qCopiaB,a,_,_
qCopiaB,a,_,_,>,-,-

qCopiaB,b,_,_
qCopiaB,b,b,_,>,>,-

qCopiaB,c,_,_
qVoltaA,c,_,_,<,-,-

qVoltaA,b,_,_
qVoltaA,b,_,_,<,-,-

qVoltaA,a,_,_
qVoltaA,a,_,_,<,-,-

qVoltaA,_,_,_
qVoltaB,_,_,_,>,<,-

//=======================================================================
// volta a segunda fita pro inicio

qVoltaB,a,b,_
qVoltaB,a,b,_,-,<,-

qVoltaB,a,_,_
qMultiplicaB,a,_,_,-,>,-

qVoltaB,b,b,_
qComparaC,b,b,_,>,-,<

//========================================================================
// copia todo b da segunda fita na terceira para cada a da primeira

qMultiplicaB,a,b,_
qMultiplicaB,a,b,b,-,>,>

qMultiplicaB,a,_,_
qVoltaB,a,_,_,>,<,-

qMultiplicaB,b,_,_
qComparaC,b,_,_,>,-,<

qVoltaBproC,b,b,b
qVoltaBproC,b,b,b,>,-,<

qVoltaBproC,c,b,b
qVoltaBproC,c,b,b,-,-,<

qVoltaBproC,c,b,_
qAlinha,c,b,_,-,-,<

//========================================================================
// compara a terceira fita com todo c da primeira fita

qComparaC,c,b,b
qComparaC,c,b,b,>,-,>

qComparaC,b,b,b
qAlinha,b,b,b,>,-,<

qAlinha,b,b,b
qAlinha,b,b,b,>,-,<

qAlinha,c,b,b
qAlinha,c,b,b,-,-,<

qAlinha,c,b,_
qComparaFinaliza,c,b,_,-,-,>

qComparaFinaliza,c,b,b
qComparaFinaliza,c,b,b,>,-,>

qComparaFinaliza,_,b,_
qAceita,_,b,_,-,-,-

qComparaFinaliza,c,b,_
qRejeita,c,b,_,-,-,-

qComparaFinaliza,_,b,b
qRejeita,_,b,b,-,-,-

