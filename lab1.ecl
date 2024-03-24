%%% figure/2, initialization for the first 16 shapes
figure(1, middle(triangle, square)).
figure(2, middle(circle, triangle)).
figure(3, middle(square, circle)).
figure(4, middle(square, square)).
figure(5, middle(square, triangle)).
figure(6, middle(triangle, circle)).
figure(7, middle(circle, square)).
figure(8, middle(triangle, triangle)).
figure(9, alternative(bottom, left, circle)).
figure(10, alternative(top, left, circle)).
figure(11, alternative(bottom, right, circle)).
figure(12, alternative(top, right, circle)).
figure(13, alternative(top, left, square)).
figure(14, alternative(bottom, left, square)).
figure(15, alternative(top, right, square)).
figure(16, alternative(bottom, right, square)).

%%% relation/3, setting up the different relations
relation(middle(S1,S2),middle(S2,S1), inverse).
relation(alternative(S1,S2,S3),alternative(S1,S4,S3), fold).

%%% analogy/4, setting up analogy in order to get the result we want
analogy(Shape1,Shape2,Shape3,Shape4):-
	figure(Shape1, Arrangement1),
	figure(Shape2, Arrangement2),
	relation(Arrangement1, Arrangement2, Function),
	figure(Shape3, Arrangement3),
	figure(Shape4, Arrangement4),
	Shape3 \= Shape4,
	relation(Arrangement3, Arrangement4, Function).
