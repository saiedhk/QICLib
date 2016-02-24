function Y = MeasureKet(ket,observable);
%--------------------------------------------------------------------------
% MeasureKet(ket,observable) computes a measurement on ket with respect to observable.
% It returns all possible outcome values, their correspnding probabilities and 
% their correspnding states after the measurement.
%
% INPUT:
%     ket : ket vector from n-dimensional Hilbert space
%     observable : hermitian n x n matrix
%
% OUTPUT:
%     Y   : n x (n+2) matrix, where each row has the following format:
%           [observed_value  probability  state_after_measurement]
%
% See also:
%     SimulateMeasureKet()

%     Author: Saied Hosseini Khayat
%     Copyright 2008
%     $Revision: 1.0 $
%     $Date: November 2008 $

%START

[krows,kcols] = size(ket);
[rows,cols] = size(observable);
n = krows;

% error checking
if (kcols~=1) | (krows<2)
   error('Wrong input dimensions')
end

if (rows~=n) | (cols~=n)
   error('Wrong input dimensions')
end

lambda = zeros(n,1);  % observed_values
prob = zeros(n,1);    % probabilities
psi = zeros(n);       % states after measurement

[U,D] = eig(observable);

for i=1:n
    lambda(i) = D(i,i);
    P = U(:,i) * U(:,i)';
    V = P * ket;
    prob(i) = ket' * V;
    normV = norm(V);
    if (normV ~= 0)
        psi(i,:) = V / normV;
    else
        error('error: ket has zero norm')
    end
end

Y = [lambda,prob,psi];

% EOF
