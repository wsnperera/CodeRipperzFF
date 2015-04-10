//sanuni
:- op(1100,xfy,'and').
:- op(1100,xfy,'or').
:- op(900,fy,'not').  



boole_and(0,0,0).      
boole_or(0,0,0).      
boole_not(0,1).
boole_and(0,1,0).      
boole_or(0,1,1).      
boole_not(1,0).
boole_and(1,0,0).      
boole_or(1,0,1).
boole_and(1,1,1).      
boole_or(1,1,1).
//sanduni
