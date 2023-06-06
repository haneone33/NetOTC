%%
% get_in_degree_cost.m
%
% Compute the cost matrix of the zero-one cost of in-degrees between
% graphs with weighted adjacency matrices D1 and D2.

function cost_mat = get_in_degree_cost(D1, D2)
    d1 = size(D1, 1);
    d2 = size(D2, 1);
    % Compute node degrees.
    in_degrees1 = sum(D1,1)';
    in_degrees2 = sum(D2,1)';
    % Construct matrix.
    cost_mat = zeros(d1, d2);
    for i=1:d1
        for j=1:d2
            cost_mat(i, j) = in_degrees1(i) ~= in_degrees2(j);
        end
    end
    % cost_mat = repmat(in_degrees1, 1, d2) ~= repmat(in_degrees2', d1, 1);
end