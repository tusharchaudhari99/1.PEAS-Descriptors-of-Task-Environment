:- dynamic dirty/1.
:- dynamic vacuum_location/1.

room(a).
room(b).
room(c).

next_room(a, b).
next_room(b, c).

dirty(a).
dirty(c).

vacuum_location(a).

action(clean) :-
    vacuum_location(Current),
    dirty(Current).

action(move(Next)) :-
    vacuum_location(Current),
    \+ dirty(Current),
    next_room(Current, Next),
    dirty(_).

action(stop) :-
    \+ dirty(_).

perform(clean) :-
    vacuum_location(Current),
    retract(dirty(Current)),
    format('Vacuum cleaned room ~w.~n', [Current]).

perform(move(Next)) :-
    vacuum_location(Current),
    retract(vacuum_location(Current)),
    assertz(vacuum_location(Next)),
    format('Vacuum moved from room ~w to room ~w.~n',
           [Current, Next]).

perform(stop) :-
    writeln('All rooms are clean. Stopping...').

start :-
    action(Action),
    perform(Action),
    continue(Action).

continue(stop) :-
    !.

continue(_) :-
    start.
