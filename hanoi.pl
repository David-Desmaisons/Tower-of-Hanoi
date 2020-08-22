movable(from([X1|X], []), to(X, [X1])). 
movable(from([X1|X], [Y1 |Y]), to(X, [X1, Y1 | Y])) :- X1 < Y1.

haspath(X, Y, X0, Y0, NameX, NameY, move(NameX, NameY)) :- movable(from(X, Y), to(X0, Y0)).
haspath(Y, X, Y0, X0, NameX, NameY, move(NameY, NameX)) :- movable(from(X, Y), to(X0, Y0)).

play([X, Y, Z], [X0, Y0, Z], Move) :- haspath(X, Y, X0, Y0, left, middle, Move).
play([X, Y, Z], [X, Y0, Z0], Move) :- haspath(Y, Z, Y0, Z0, middle, rigth, Move).
play([X, Y, Z], [X0, Y, Z0], Move) :- haspath(X, Z, X0, Z0, left, rigth, Move).

findpath(State, State, []).
findpath(State, State1, [X | Path]) :- 
  length(Path, L), L < 40,
  play(State0, State1, X), 
  findpath(State, State0, Path).

hanoi(N,Solution):- reverse(Solution,List), findall(X, between(1,N,X), P), findpath([P,[],[]],[[],[],P],List).


