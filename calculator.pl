calculate(+, A, B, R) :- R is A + B.
calculate(-, A, B, R) :- R is A - B.
calculate(*, A, B, R) :- R is A * B.
calculate(/, A, B, R) :-
    B =\= 0,
    R is A / B.

calculator :-
    write('Enter first number: '),
    read(A),
    write('Enter operator (+, -, *, /): '),
    read(Op),
    write('Enter second number: '),
    read(B),
    (   calculate(Op, A, B, R)
    ->  write('Result = '), write(R), nl
    ;   write('Invalid operation or division by zero.'), nl
    ).