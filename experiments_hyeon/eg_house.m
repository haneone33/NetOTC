userpath("reset")
addpath(genpath('C:\Users\haneo\Documents\GitHub\NetOTC'))

A1 = [0 1 1 0 0;
      1 0 1 1 0;
      1 1 0 0 1;
      0 1 0 0 1;
      0 0 1 1 0];
% perm = randperm(5);
perm = [2 3 4 5 1];

A2 = A1(perm, perm);


G1 = graph(A1);
figure(1)
plot(G1)


P1 = A1 ./ sum(A1, 2);
P2 = A2 ./ sum(A2, 2);

c = get_degree_cost(A1, A2);

[otc_distance, gotc, otc_alignment] = exact_otc(P1, P2, c);

otc_alignment
loc1 = [5 6 7 11 12 18 19 23 24];
loc2 = [5 6 7 11 12 3 4 23 24];
gotc(loc1, loc2);

gotc(loc1, loc1)
