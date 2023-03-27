// Input: string de 1s
// Ouput: aceita strings da forma 1^*x1^*=1^*
// Example:
//    aceita: 1x1=111, 11x1=1, x=
//    rejeita: 1=x1, 1=1x1

name: 1sx1s=1s
init: antes_x
accept: fim

//===================================================
// antes_x
antes_x,1
antes_x,1,>

antes_x,=
rejeite,=,-

antes_x,_
rejeite,_,-

antes_x,x
depois_x,x,>


//===================================================
// depois_x
depois_x,1
depois_x,1,>

depois_x,=
depois_igual,=,>

depois_x,_
rejeite,_,-

depois_x,x
rejeite,x,-

//===================================================
// depois_igual
depois_igual,1
depois_igual,1,>

depois_igual,=
depois_igual,=,>

depois_igual,_
volta,_,<

depois_igual,x
rejeite,x,-

//===================================================
// volta
volta,1
volta,1,<

volta,=
volta,=,<

volta,_
fim,_,>

volta,x
volta,x,<

