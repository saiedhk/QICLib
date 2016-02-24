function y = ShannonCondEntropy(P)
%--------------------------------------------------------------------------
% ShannonCondEntropy(P) computes the conditional Shannon Entropy H(Y|X)
% given the joint probabilities P(X,Y). X, Y are discrete variables.
%
% INPUT:
%     P : n x m matrix containing joint probabilities
%         where P(i,j) = Prob[X=i,Y=j] 
% OUTPUT:
%     y : Conditional Shannon Entropy of Y given X, i.e., H(Y|X) = H(X,Y) - H(X) 
%
% See also:
%     ShannonEntropy(), ShannonMutualInfo()

%       Author: Saied Hosseini Khayat
%       Copyright 2008
%       $Revision: 1.0 $  
%       $Date: September 2008 $

% START

y = ShannonEntropy(P) - ShannonEntropy( sum(P') );

% note: sum(P') is the probability distribution of X.

%EOF