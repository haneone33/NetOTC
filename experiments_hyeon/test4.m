userpath("reset")
addpath(genpath('C:\Users\haneo\Documents\GitHub\NetOTC'))

% Define adjacency matrices
n = 16;
A1 = zeros(n+4, n+4);
for row=1:n-1
    A1(row, row+1) = 1;
end
A1(1, n) = 1;

A1(1,n+1) = 1;
A1(8,n+2) = 1;
A1(9, n+3) = 1;
A1(16, n+4) = 1;

A2 = A1;

A1(2,10) = 1; A1(7,15) = 1;
A2(2,7) = 1; A2(10,15) = 1; 

A1 = A1+A1';
A2 = A2+A2';

figure(1);
G1 = graph(A1);
plot(G1);
figure(2);
G2 = graph(A2);
plot(G2);

%%
% Get transition matrices
P1 = A1 ./ sum(A1, 2);
P2 = A2 ./ sum(A2, 2);

% Get distributions
stat_dist1 = approx_stat_dist(P1, 100)';
stat_dist2 = approx_stat_dist(P2, 100)';
unif_dist1 = ones(n,1)/n;
unif_dist2 = ones(n,1)/n;

% Get cost function
c = get_degree_cost(A1, A2);

[otc_distance, gotc, otc_alignment]  = exact_otc(P1, P2, c);
[~, otc_perm] = max(otc_alignment,[],2);

otc_distance
otc_alignment;
otc_perm

check_isomorphism(otc_perm, A1, A2)

