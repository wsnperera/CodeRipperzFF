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

//Jithma 
highlight3 initial_assign([],[]).
initial_assign([X|R],[0|S]) :- initial_assign(R,S).
successor(A,S) :- reverse(A,R),
                  next(R,B),
                  reverse(B,S).
next([0|R],[1|R]).
next([1|R],[0|S]) :- next(R,S).
highlight0
//Jithma


//Chethaka 

actual_vals(B,_,_,B) :­ member(B,[0,1]).

actual_vals(X,Vars,A,Val) :­ atom(X),

actual_vals(X and Y,Vars,A,Val) :­ actual_vals(X,Vars,A,VX),

lookup(X,Vars,A,Val).

actual_vals(Y,Vars,A,VY),

boole_and(VX,VY,Val).

actual_vals(X or Y,Vars,A,Val) :­ actual_vals(X,Vars,A,VX),

actual_vals(not X,Vars,A,Val) :­ actual_vals(X,Vars,A,VX),

actual_vals(Y,Vars,A,VY),

boole_or(VX,VY,Val).

boole_not(VX,Val).

lookup(X,[X|_],[V|_],V).

lookup(X,[_|Vars],[_|A],V) :­ lookup(X,Vars,A,V).

//Chethaka 


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
