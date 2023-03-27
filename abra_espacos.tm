// Isis Ardisson Logullo  nUSP 7577410
// O numero de passos eh O(n) 
// n = 4=u+v+w
// Para espacar a primeira string 2u + 2
// Para espacar a segunda string 2(u+v) + 3
// Para espacar a terceira straing 2(u+v+w) + 4
// 6u + 4v + 2w + 9 

name: Abra Espacos
init: qConsistencia
accept: qAceita

//==========================================================
// Verifica a entrada

// primeira string
qConsistencia,#
qConsistencia1,#,>

qConsistencia1,a
qConsistencia1,a,>

qConsistencia1,b
qConsistencia1,b,>

qConsistencia1,_
qConsistencia1,x,>

// segunda string
qConsistencia1,#
qConsistencia2,#,>

qConsistencia2,a
qConsistencia2,a,>

qConsistencia2,b
qConsistencia2,b,>

qConsistencia2,_
qConsistencia2,x,>

// terceira string
qConsistencia2,#
qConsistencia3,#,>

qConsistencia3,a
qConsistencia3,a,>

qConsistencia3,b
qConsistencia3,b,>

qConsistencia3,_
qConsistencia3,x,>

//finaliza
qConsistencia3,#
qSobrou,#,>

qSobrou,a
qRejeita,_,-

qSobrou,b
qRejeita,_,-

qSobrou,#
qRejeita,_,-

qSobrou,_
qVolta1,_,<


//==============================================================
// puxa primera string

qVolta1,#
qVolta1,#,<

qVolta1,a
qVolta1,a,<

qVolta1,b
qVolta1,b,<

qVolta1,x
qVolta1,x,<

qVolta1,_
qPuxa01,_,>

//puxa o primeiro # pra esquerda
qPuxa01,#
qPuxa01,_,<

qPuxa01,_
qPuxa1,#,>

//puxa toda string pra esquerda
qPuxa1,_
qPuxa1,_,>

qPuxa1,a
qVolta1A,_,<

qVolta1A,_
qPuxa1,a,>

qPuxa1,b
qVolta1B,_,<

qVolta1B,_
qPuxa1,b,>

qPuxa1,x
qVolta1X,_,<

qVolta1X,_
qPuxa1,x,>

qPuxa1,#
qVolta02,#,<

//======================================================================================
//puxa segunda string

qVolta02,#
qVolta02,#,<

qVolta02,a
qVolta02,a,<

qVolta02,b
qVolta02,b,<

qVolta02,x
qVolta02,x,<

qVolta02,_
qVolta2,_,<

qVolta2,#
qVolta2,#,<

qVolta2,a
qVolta2,a,<

qVolta2,b
qVolta2,b,<

qVolta2,x
qVolta2,x,<

qVolta2,_
qPuxa002,_,>

//puxa o primeiro # pra esquerda
qPuxa002,#
qPuxa002,_,<

qPuxa002,_
qPuxa02,#,>

//puxa primeira string pra esquerda ate chegar na segunda
qPuxa02,_
qPuxa02,_,>

qPuxa02,a
qVolta02A,_,<

qVolta02A,_
qPuxa02,a,>

qPuxa02,b
qVolta02B,_,<

qVolta02B,_
qPuxa02,b,>

qPuxa02,x
qVolta02X,_,<

qVolta02X,_
qPuxa02,x,>

qPuxa02,#
qPuxa2E,_,<

qPuxa2E,_
qPuxa2,#,>

//puxa segunda string pra esquerda 
qPuxa2,_
qPuxa2,_,>

qPuxa2,a
qVolta2A,_,<

qVolta2A,_
qPuxa2,a,>

qPuxa2,b
qVolta2B,_,<

qVolta2B,_
qPuxa2,b,>

qPuxa2,x
qVolta2X,_,<

qVolta2X,_
qPuxa2,x,>

qPuxa2,#
qVolta003,#,<

//=======================================================================================
// puxa terceira string

qVolta003,#
qVolta003,#,<

qVolta003,a
qVolta003,a,<

qVolta003,b
qVolta003,b,<

qVolta003,x
qVolta003,x,<

qVolta003,_
qVolta03,_,<

qVolta03,#
qVolta03,#,<

qVolta03,a
qVolta03,a,<

qVolta03,b
qVolta03,b,<

qVolta03,x
qVolta03,x,<

qVolta03,_
qVolta3,_,<

qVolta3,#
qVolta3,#,<

qVolta3,a
qVolta3,a,<

qVolta3,b
qVolta3,b,<

qVolta3,x
qVolta3,x,<

qVolta3,_
qPuxa0003,_,>

//puxa o primeiro # pra esquerda
qPuxa0003,#
qPuxa0003,_,<

qPuxa0003,_
qPuxa003,#,>

//puxa primeira string pra esquerda ate chegar na segunda
qPuxa003,_
qPuxa003,_,>

qPuxa003,a
qVolta003A,_,<

qVolta003A,_
qPuxa003,a,>

qPuxa003,b
qVolta003B,_,<

qVolta003B,_
qPuxa003,b,>

qPuxa003,x
qVolta003X,_,<

qVolta003X,_
qPuxa003,x,>

qPuxa003,#
qPuxa03E,_,<

qPuxa03E,_
qPuxa03,#,>

//puxa segunda string pra esquerda 
qPuxa03,_
qPuxa03,_,>

qPuxa03,a
qVolta03A,_,<

qVolta03A,_
qPuxa03,a,>

qPuxa03,b
qVolta03B,_,<

qVolta03B,_
qPuxa03,b,>

qPuxa03,x
qVolta03X,_,<

qVolta03X,_
qPuxa03,x,>

qPuxa03,#
qPuxa3E,_,<

qPuxa3E,_
qPuxa3,#,>

//puxa terceira strinf pra esquerda
qPuxa3,_
qPuxa3,_,>

qPuxa3,a
qVolta3A,_,<

qVolta3A,_
qPuxa3,a,>

qPuxa3,b
qVolta3B,_,<

qVolta3B,_
qPuxa3,b,>

qPuxa3,x
qVolta3X,_,<

qVolta3X,_
qPuxa3,x,>

qPuxa3,#
qVoltaL1,#,<

qVoltaL1,a
qVoltaL1,a,<

qVoltaL1,b
qVoltaL1,b,<

qVoltaL1,x
qVoltaL1,_,<

qVoltaL1,_
qVoltaL1,_,<

qVoltaL1,#
qVoltaL2,#,<

qVoltaL2,a
qVoltaL2,a,<

qVoltaL2,b
qVoltaL2,b,<

qVoltaL2,x
qVoltaL2,_,<

qVoltaL2,_
qVoltaL2,_,<

qVoltaL2,#
qVoltaL3,#,<

qVoltaL3,a
qVoltaL3,a,<

qVoltaL3,b
qVoltaL3,b,<

qVoltaL3,_
qVoltaL3,_,<

qVoltaL3,x
qVoltaL3,_,<

qVoltaL3,#
qAceita,#,-


