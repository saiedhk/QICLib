function chi = HolevoChi(Rho,P)
%--------------------------------------------------------------------------
% HolevoChi(Rho,P) computes the Holevo Chi Bound given an ensemble of density matrices
% and their corresponding probabilities.
%
% INPUT:
%     Rho : array of density matrices (3-dimensional array)
%     P   : row vector of probabilities
% OUTPUT:
%     chi : Holveo Chi number
%
% See also:
%     QuantumEntropy     

%       Author: Saied Hosseini Khayat
%       Copyright 2008
%       $Revision: 1.0 $  
%       $Date: September 2008 $
%

% START

[rows,cols,n] = size(Rho);

if (rows<2) | (cols<2) | (n<2) | (rows~=cols)
   error('Wrong input dimensions');
end 

SS = zeros(1,n);

S = zeros(rows,cols);

for i = 1:n
    SS(i) = QuantumEntropy( Rho(:,:,i) );
    S = S + P(i) * Rho(:,:,i);
end

sum = 0;

for i = 1:n
    sum = sum + P(i)*SS(i);   
end

chi = QuantumEntropy(S) - sum;

% EOF
