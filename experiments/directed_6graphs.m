A1 = [0 0 0 0 0 1;
      1 0 1 0 0 0;
      0 1 0 1 0 0;
      0 0 0 0 1 0;
      0 0 0 0 0 1;
      0 0 0 0 1 0];
A2 = A1

A1(2,6) = 1; A1(6,2) = 1;
A1(3,5) = 1; A1(5,3) = 1;
A2(2,5) = 1; A2(5,2) = 1;
A2(3,6) = 1; A2(6,3) = 1;

G1 = digraph(A1);
figure(1)
plot(G1)
G2 = digraph(A2);
figure(2);
plot(G2)


P1 = A1 ./ sum(A1, 2);
P2 = A2 ./ sum(A2, 2);

c = get_degree_cost(A1, A2);

[otc_distance, gotc, otc_alignment] = exact_otc(P1, P2, c);
otc_distance