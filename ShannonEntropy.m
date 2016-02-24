function y = ShannonEntropy(P)
%--------------------------------------------------------------------------
% ShannonEntropy(P) computes the Shannon entropy of a probability distribution P.
%
% INPUT:
%     P : array of discrete probabilities
%         (P can be a row vector of probabilities if a single random
%         variable X is considered, or it can be a matrix of joint
%         probabilities if two random variables X,Y are considered.)
% OUTPUT:
%     y : entropy, a real number in [0,1]
%
% See also:
%     ShannonCondEntropy(), ShannonMutualInfo(), QuantumEntropy()

%     Author: Saied Hosseini Khayat
%     Copyright 2008
%     $Revision: 1.0 $
%     $Date: September 2008 $
%

% START

[rows,cols] = size(P);

if (cols<2)
   error('Wrong input dimensions')
end

y = 0;

if (rows==1) % case of single random variable
    for i = 1 : cols
        if P(i)>0
            y = y - P(i) * log2(P(i));
        end
    end
else % case of two random variables
    for i = 1 : rows
        for j = 1 : cols
            if P(i,j)>0
               y = y - ( P(i,j) * log2(P(i,j)) );
            end
        end
    end
end

% EOF