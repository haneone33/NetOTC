cnt = 0;

n = 4;
A1 = zeros(n, n);
for row=1:n-1
    A1(row, row+1) = 1;
    A1(row+1, row) = 1;
end

perm = [2 3 4 1];
% perm = randperm(n);
A2 = A1(perm,perm);

G1 = graph(A1);
figure(1)
plot(G1)
% G2 = graph(A2);
% figure(12)
% plot(G2)

% Get transition matrices
P1 = A1 ./ sum(A1, 2);
P2 = A2 ./ sum(A2, 2);

% Get cost function
c = get_degree_cost(A1, A2);

[otc_distance, gotc, otc_alignment]  = exact_otc(P1, P2, c);

loc = [4 3 5 6 9 10 16 15];
gotc(loc,:)