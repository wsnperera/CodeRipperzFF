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





//Suhani
cr(J) :- search_vals(J,[],V),
         reverse(V,Vars),
         initial_assign(Vars,A),
         write('  '), write(Vars), write('    '), write(J), nl,
         write('---------------------------------------------'), nl,
         write_row(J,Vars,A),
         write('---------------------------------------------'), nl.

write_row(J,Vars,A) :- write('  '), write(A), write('        '), 
                       actual_vals(J,Vars,A,V), 
write(V), nl,
                       (successor(A,B) -> write_row(J,Vars,B) ; true).

//Suhani
