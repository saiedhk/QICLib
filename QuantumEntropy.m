function y = QuantumEntropy(rho)
%--------------------------------------------------------------------------
% QuantumEntropy(rho) computes the Quantum (von Neumann) Entropy of a density matrix.
%
% INPUT:
%     rho : n x n density matrix
% OUTPUT:
%     y : quantum entropy, a real number in [0,1]
%
% See also:
%     ShannonEntropy()     

%       Author: Saied Hosseini Khayat
%       Copyright 2008
%       $Revision: 1.0 $  
%       $Date: September 2008 $
%

% START

[rows,cols] = size(rho);
if (rows~=cols) | (rows<2)
   error('Wrong input dimensions');
end

Lambda = eig(rho);  % Lambda = array of eigenvalues
y = ShannonEntropy(Lambda');

% EOF
