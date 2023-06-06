A1 = [0,1,1,0,0,1; 1,0,1,0,0,0; 1,1,0,1,0,0; 0,0,1,0,1,1; 0,0,0,1,0,1; 1,0,0,1,1,0];
A2 = [0,1,0,1,0,1; 1,0,1,0,0,0; 0,1,0,1,0,1; 1,0,1,0,1,0; 0,0,0,1,0,1; 1,0,1,0,1,0];

%% 
A1 = [0,1,1,0,0,1; 1,0,1,0,0,0; 1,1,0,1,0,0; 0,0,1,0,1,1; 0,0,0,1,0,1; 1,0,0,1,1,0];
A1 = [A1, [0,0,0,0,1,0]'; [0,0,0,0,1,0], 0];
A2 = [0,1,0,1,0,1; 1,0,1,0,0,0; 0,1,0,1,0,1; 1,0,1,0,1,0; 0,0,0,1,0,1; 1,0,1,0,1,0];
A2 = [A2, [0,0,0,0,1,0]'; [0,0,0,0,1,0], 0];


%% 
A1 = [0,1,1,0,0,1; 1,0,1,0,0,0; 1,1,0,1,0,0; 0,0,1,0,1,1; 0,0,0,1,0,1; 1,0,0,1,1,0];
A1 = [A1, zeros(6,6); zeros(6,6), A1];
A1(2,8) = 1;
A1(8,2) = 1;
A2 = [0,1,0,1,0,1; 1,0,1,0,0,0; 0,1,0,1,0,1; 1,0,1,0,1,0; 0,0,0,1,0,1; 1,0,1,0,1,0];
A2 = [A2, zeros(6,6); zeros(6,6), A2];
A2(2,8) = 1;
A2(8,2) = 1;
%% 

% perm = randperm(6);
% A2 = A1(perm,perm);
figure(1)
G1 = graph(A1);
plot(G1)
G2 = graph(A2);
figure(2)
plot(G2)

%% 

n1 = size(A1,1);
n2 = size(A2,1);

% Compute transition matrices and stationary distributions
P1 = A1 ./ sum(A1, 2);
P2 = A2 ./ sum(A2, 2);

% Construct cost function
c = get_degree_cost(A1, A2);
%c = standardized_degree_cost(A1, A2);

% Run algorithms
for itr = 1:100
[otc_distance, gotc, otc_alignment] = exact_otc(P1, P2, c);

otc_distance
% gotc
% otc_alignment
end