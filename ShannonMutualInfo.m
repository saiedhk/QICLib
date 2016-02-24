function y = ShannonMutualInfo(P)
%--------------------------------------------------------------------------
% ShannonMutualInfo(P) computes the Shannon Mutual Information I(X,Y)
% given the joint probabilities P(X,Y). X,Y are discrete variables.
%
% INPUT:
%     P : n x m matrix, containing joint probabilities
%         where P(i,j) = Prob[X=i,Y=j] 
% OUTPUT:
%     y : Mutual information of between X and Y, i.e., I(X,Y) = H(X) + H(Y) - H(X,Y) 
%
% See also:
%     ShannonEntropy(), ShannonCondEntropy()

%       Author: Saied Hosseini Khayat
%       Copyright 2008 
%       $Revision: 1.0 $  
%       $Date: September 2008 $

% START

y = ShannonEntropy(sum(P')) + ShannonEntropy(sum(P)) - ShannonEntropy(P);

% note: sum(P') is the probability distribution of X, sum(P) is that of Y.

%end function
