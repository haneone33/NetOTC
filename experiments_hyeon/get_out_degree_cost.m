%%
% get_out_degree_cost.m
%
% Compute the cost matrix of the zero-one cost of out-degrees between
% graphs with weighted adjacency matrices D1 and D2.

function cost_mat = get_out_degree_cost(D1, D2)
    d1 = size(D1, 1);
    d2 = size(D2, 1);
    % Compute node degrees.
    out_degrees1 = sum(D1,2);
    out_degrees2 = sum(D2,2);
    % Construct matrix.
    cost_mat = zeros(d1, d2);
    for i=1:d1
        for j=1:d2
            cost_mat(i, j) = out_degrees1(i) ~= out_degrees2(j);
        end
    end
    % cost_mat = repmat(out_degrees1, 1, d2) ~= repmat(out_degrees2', d1, 1);
end