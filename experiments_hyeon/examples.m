cd C:\Users\haneo\Documents\GitHub\NetOTC\experiments_hyeon\
userpath("reset")
addpath(genpath('C:\Users\haneo\Documents\GitHub\NetOTC'))

%%

A1 = [0 1 1; 1 1 0; 1 0 1];
A2 = [0 1; 1 1];

P1 = A1 ./ sum(A1, 2);
P2 = A2 ./ sum(A2, 2);
c = get_degree_cost(A1, A2);
[otc_distance, gotc, otc_alignment] = exact_otc(P1, P2, c);

otc_alignment
otc_distance

%%

A1 = [0 0 1 1; 1 0 0 0; 0 1 0 0; 1 0 0 0];
A2 = [0 1 1; 1 0 0; 0 1 0];

P1 = A1 ./ sum(A1, 2);
P2 = A2 ./ sum(A2, 2);
c1 = get_out_degree_cost(A1, A2);
c2 = get_in_degree_cost(A1, A2);
c3 = get_both_degree_cost(A1, A2);

[otc_distance1, gotc1, otc_alignment1] = exact_otc(P1, P2, c1);
otc_distance1
otc_alignment1

[otc_distance2, gotc2, otc_alignment2] = exact_otc(P1, P2, c2);
otc_distance2
otc_alignment2

[otc_distance3, gotc3, otc_alignment3] = exact_otc(P1, P2, c3);
otc_distance3
otc_alignment3

%%
A1 = [0 0 1 1; 1 0 0 0; 0 1 0 0; 1 0 0 0]';
A2 = [0 1 1; 1 0 0; 0 1 0]';

P1 = A1 ./ sum(A1, 2);
P2 = A2 ./ sum(A2, 2);
c1 = get_out_degree_cost(A1, A2);
c2 = get_in_degree_cost(A1, A2);
c3 = get_both_degree_cost(A1, A2);

[otc_distance1, gotc1, otc_alignment1] = exact_otc(P1, P2, c1);
otc_distance1
otc_alignment1

[otc_distance2, gotc2, otc_alignment2] = exact_otc(P1, P2, c2);
otc_distance2
otc_alignment2

[otc_distance3, gotc3, otc_alignment3] = exact_otc(P1, P2, c3);
otc_distance3
otc_alignment3

%%
A1 = [0 0 1 0 0 1 0 0 1;
      1 0 0 0 0 0 0 0 0;
      0 1 0 0 0 0 0 0 0;
      1 0 0 0 0 0 0 0 0;
      0 0 0 1 0 0 0 0 0;
      0 0 0 0 1 0 0 0 0;
      1 0 0 0 0 0 0 0 0;
      0 0 0 0 0 0 1 0 0;
      0 0 0 0 0 0 0 1 0];
A2 = A1;
A1(1,2) = 1; A1(8,4) = 1;
A2(1,4) = 1; A2(8,2) = 1;

A1 = A1';
A2 = A2';

figure(1)
plot(digraph(A1))
figure(2)
plot(digraph(A2))


P1 = A1 ./ sum(A1, 2);
P2 = A2 ./ sum(A2, 2);
c1 = get_out_degree_cost(A1, A2);
c2 = get_in_degree_cost(A1, A2);
c3 = get_both_degree_cost(A1, A2);

[otc_distance1, gotc1, otc_alignment1] = exact_otc(P1, P2, c1);
otc_distance1
otc_alignment1

[otc_distance2, gotc2, otc_alignment2] = exact_otc(P1, P2, c2);
otc_distance2
otc_alignment2

[otc_distance3, gotc3, otc_alignment3] = exact_otc(P1, P2, c3);
otc_distance3
otc_alignment3

%%
A1 = [0 0 1 1; 1 0 0 0; 0 1 0 0; 1 0 0 0];
A2 = [0 0 1; 1 0 0; 1 1 0];

P1 = A1 ./ sum(A1, 2);
P2 = A2 ./ sum(A2, 2);
c1 = get_out_degree_cost(A1, A2);
c2 = get_in_degree_cost(A1, A2);
c3 = get_both_degree_cost(A1, A2);

[otc_distance1, gotc1, otc_alignment1] = exact_otc(P1, P2, c1);
otc_distance1
otc_alignment1

[otc_distance2, gotc2, otc_alignment2] = exact_otc(P1, P2, c2);
otc_distance2
otc_alignment2

[otc_distance3, gotc3, otc_alignment3] = exact_otc(P1, P2, c3);
otc_distance3
otc_alignment3

%%
A1 = [0 1 1 1 0, 0 0 0 0 0, 0;
      1 0 0 0 1, 1 0 0 0 0, 0;
      1 0 0 0 0, 0 1 1 0 0, 0;
      1 0 0 0 0, 0 0 0 1 0, 0;
      0 1 0 0 0, 0 0 0 0 1, 0;
      0 1 0 0 0, 0 0 0 0 0, 0;
      0 0 1 0 0, 0 0 0 0 0, 1;
      0 0 1 0 0, 0 0 0 0 0, 0;
      0 0 0 1 0, 0 0 0 0 0, 0;
      0 0 0 0 1, 0 0 0 0 0, 0;
      0 0 0 0 0, 0 1 0 0 0, 0];
A2 = A1;
A2(2,6) = 0; A2(6,2) = 0;
A2(3,7) = 0; A2(7,3) = 0;
A2(2,7) = 1; A2(7,2) = 1;
A2(3,6) = 1; A2(6,3) = 1;

figure(1)
plot(graph(A1))
figure(2)
plot(graph(A2))

P1 = A1 ./ sum(A1, 2);
P2 = A2 ./ sum(A2, 2);
c1 = get_out_degree_cost(A1, A2);
c2 = get_in_degree_cost(A1, A2);
c3 = get_both_degree_cost(A1, A2);

[otc_distance1, gotc1, otc_alignment1] = exact_otc(P1, P2, c1);
otc_distance1
otc_alignment1

[otc_distance2, gotc2, otc_alignment2] = exact_otc(P1, P2, c2);
otc_distance2
otc_alignment2

[otc_distance3, gotc3, otc_alignment3] = exact_otc(P1, P2, c3);
otc_distance3
otc_alignment3

%%
A1 = [0 1 0;
      0 0 1;
      1 0 0];
A2 = [0 1 0 0;
      0 0 1 0;
      0 0 0 1;
      1 0 0 0];

figure(1)
plot(digraph(A1))
figure(2)
plot(digraph(A2))

P1 = A1 ./ sum(A1, 2);
P2 = A2 ./ sum(A2, 2);
c1 = get_out_degree_cost(A1, A2);
c2 = get_in_degree_cost(A1, A2);
c3 = get_both_degree_cost(A1, A2);

[otc_distance1, gotc1, otc_alignment1] = exact_otc(P1, P2, c1);
otc_distance1
otc_alignment1

[otc_distance2, gotc2, otc_alignment2] = exact_otc(P1, P2, c2);
otc_distance2
otc_alignment2

[otc_distance3, gotc3, otc_alignment3] = exact_otc(P1, P2, c3);
otc_distance3
otc_alignment3

%%
A1 = [0 1 0;
      0 0 1;
      1 0 0];
A1 = A1+A1';
A2 = [0 1 0 0;
      0 0 1 0;
      0 0 0 1;
      1 0 0 0];
A2 = A2+A2';

figure(1)
plot(graph(A1))
figure(2)
plot(graph(A2))

P1 = A1 ./ sum(A1, 2);
P2 = A2 ./ sum(A2, 2);
c1 = get_out_degree_cost(A1, A2);
c2 = get_in_degree_cost(A1, A2);
c3 = get_both_degree_cost(A1, A2);

[otc_distance1, gotc1, otc_alignment1] = exact_otc(P1, P2, c1);
otc_distance1
otc_alignment1

[otc_distance2, gotc2, otc_alignment2] = exact_otc(P1, P2, c2);
otc_distance2
otc_alignment2

[otc_distance3, gotc3, otc_alignment3] = exact_otc(P1, P2, c3);
otc_distance3
otc_alignment3