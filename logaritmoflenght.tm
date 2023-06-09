// Input: binary number n
// Ouput: floor(log(|n|))
// |n| is the length of n
// Example: 1111 returns 10

// Logarithm of Length Algorithm
// for Turing Machine Simulator 
// turingmachinesimulator.com
// by Pedro Aste - ppaste@uc.cl

name: Logarithm of length
init: q0
accept: q7

q0,0,_
q0,_,1,>,-

q0,1,_
q0,_,1,>,-

q0,0,1
q1,_,0,-,<

q1,_,_
q2,_,1,-,>

q0,1,1
q1,_,0,-,<

q0,0,0
q0,_,1,>,-

q0,1,0
q0,_,1,>,-

q0,0,1
q1,_,0,-,<

q1,_,1
q1,_,0,-,<

q1,_,0
q2,_,1,-,<

q2,_,1
q2,_,1,-,>

q2,_,0
q2,_,0,-,>

q2,_,_
q0,_,_,>,<

q0,_,0
q3,_,0,-,-

q0,_,1
q3,_,1,-,-

q3,_,0
q3,0,_,<,<

q3,_,1
q3,1,_,<,<

q3,_,_
q4,_,_,>,-

q4,0,_
q4,_,0,>,-

q4,1,_
q4,_,0,>,-

q4,0,1
q5,_,0,>,<

q5,_,_
q6,_,1,-,>

q5,0,_
q6,0,1,-,>

q5,1,_
q6,1,1,-,>

q4,1,1
q5,_,0,>,<

q4,0,0
q4,_,1,>,-

q4,1,0
q4,_,1,>,-

q5,_,1
q5,_,0,-,<

q5,_,0
q6,_,1,-,<

q6,_,1
q6,_,1,-,>

q6,_,0
q6,_,0,-,>

q5,0,1
q5,0,0,-,<

q5,0,0
q6,0,1,-,<

q6,0,1
q6,0,1,-,>

q6,0,0
q6,0,0,-,>

q5,1,1
q5,1,0,-,<

q5,1,0
q6,1,1,-,<

q6,1,1
q6,1,1,-,>

q6,1,0
q6,1,0,-,>

q6,0,_
q4,0,_,-,<

q6,1,_
q4,1,_,-,<

q4,_,1
q7,_,1,-,-

q6,_,_
q7,_,_,-,<
