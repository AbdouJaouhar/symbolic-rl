1{action(down, T); action(up, T); action(right, T); action(left, T)}1 :- time(T), not finished(T).
#show state_at/2.
 #show action/2.

cell((0..17, 0..7)).
#minimize{1, X, T: action(X,T)}.
adjacent(right, (X+1,Y),(X,Y))   :- cell((X,Y)), cell((X+1,Y)).
adjacent(left,(X,Y),  (X+1,Y)) :- cell((X,Y)), cell((X+1,Y)).
adjacent(down, (X,Y+1),(X,Y))   :- cell((X,Y)), cell((X,Y+1)).
adjacent(up,   (X,Y),  (X,Y+1)) :- cell((X,Y)), cell((X,Y+1)).

wall((3, 4)).

wall((3, 7)).

wall((4, 7)).

wall((4, 4)).

wall((5, 7)).

wall((6, 7)).

wall((6, 4)).

wall((5, 4)).

wall((2, 7)).

wall((6, 3)).

wall((8, 0)).

wall((12, 3)).

wall((14, 7)).

wall((15, 7)).

wall((13, 7)).

wall((12, 7)).

wall((15, 4)).

wall((17, 2)).

wall((15, 0)).
finished(T):- goal(T2), time(T), T >= T2.
 goal(T):- state_at((16, 1), T), not finished(T-1).
goalMet:- goal(T).
:- not goalMet.

wall((0, 5)).

wall((1, 7)).

wall((0, 6)).
%START
state_at(V1, T+1) :- time(T), adjacent(right, V0, V1), state_at(V0, T), action(left, T), not wall(V1).
state_at(V0, T+1) :- time(T), adjacent(right, V0, V1), state_at(V1, T), action(right, T), not wall(V0).
state_at(V1, T+1) :- time(T), adjacent(up, V0, V1), state_at(V0, T), action(down, T), not wall(V1).
state_at(V0, T+1) :- time(T), adjacent(up, V0, V1), state_at(V1, T), action(up, T), not wall(V0).
state_at(V0, T+1) :- time(T), adjacent(right, V0, V1), state_at(V0, T), action(left, T), wall(V1).
state_at(V1, T+1) :- time(T), adjacent(right, V0, V1), state_at(V1, T), action(right, T), wall(V0).
state_at(V0, T+1) :- time(T), adjacent(up, V0, V1), state_at(V0, T), action(down, T), wall(V1).
state_at(V1, T+1) :- time(T), adjacent(up, V0, V1), state_at(V1, T), action(up, T), wall(V0).

%END
%AAA
state_at((1, 6), 4).
%BBB
%CCC
time(4..250).
%DDD
%ANSWER SETS

%state_at((1,6),4)
%state_at((2,6),5)
%action(right,4)
%state_at((2,5),6)
%action(up,5)
%action(up,6)
%state_at((2,4),7)
%action(up,7)
%state_at((2,3),8)
%action(right,8)
%state_at((3,3),9)
%action(right,9)
%state_at((4,3),10)
%action(right,10)
%state_at((5,3),11)
%action(up,11)
%state_at((5,2),12)
%action(right,12)
%state_at((6,2),13)
%action(right,13)
%state_at((7,2),14)
%action(right,14)
%state_at((8,2),15)
%action(right,15)
%state_at((9,2),16)
%action(right,16)
%state_at((10,2),17)
%action(right,17)
%state_at((11,2),18)
%action(right,18)
%state_at((12,2),19)
%state_at((12,1),20)
%action(up,19)
%action(right,20)
%state_at((13,1),21)
%action(right,21)
%state_at((14,1),22)
%action(right,22)
%state_at((15,1),23)
%action(right,23)
%state_at((16,1),24)
