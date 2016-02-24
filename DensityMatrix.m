function Y = DensityMatrix(A,P)
%--------------------------------------------------------------------------
% DensityMatrix(A,P) computes the density matrix of an ensemble of m pure states.
%
% INPUT: An ensemble consisting of
%     A : array of m kets (an n x m matrix)  
%     P : probability distribution (row vector of size m)
% OUTPUT:
%     Y : desnsity matrix, an n x n matrix 
%
%     See also:
%              

%       Author: Saied Hosseini-Khayat
%       Copyright 2008
%       $Revision: 1.0 $  
%       $Date: August 2008 $


% START

[Prows,Pcols] = size(P);
[Arows,Acols] = size(A);

if (Pcols<2) | (Prows~=1) | (Acols~=Pcols) | (Arows<2)
   error('Wrong input dimensions');
end

Y = zeros(Arows,Arows);
for i = 1 : Acols
    Y = Y + (Outer(A(:,i),A(:,i))) * P(i);
end

% EOF
