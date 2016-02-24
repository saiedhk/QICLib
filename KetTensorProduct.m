function Y = KetTensorProduct(X)
%--------------------------------------------------------------------------
% KetTensorProduct(X) take an array X of kets and returns their tensor product.
%
% INPUT:
%     X : matrix, being an array of kets
%
% OUTPUT:
%     Y : product ket, being the tensor product of all kets in X
%
%
% See also:
%                  

%       Author: Saied Hosseini Khayat
%       Copyright 2008
%       $Revision: 1.0 $  
%       $Date: August 2008 $

% START

[rows,cols]=size(X);

if (cols<2) | (rows<2)
   error('Wrong input dimensions');
end

Y = kron( X(:,1) , X(:,2) );

for i = 3 : cols
    Y = kron( Y, X(:,i) );
end

%EOF