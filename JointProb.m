function Q = JointProb(P,X)
%--------------------------------------------------------------------------
% JointProb computes joint probabilities P(X,Y) from conditional probabilities P(Y|X).  
% X,Y are discrete variables over a finite set.
%
% INPUT:
%    P : Matrix of conditional probabilities, where P(i,j) = Prob[Y=j|X=i] 
%    X : column vector of probabilities of X, where X(i) = Prob[X=i]
%
% OUTPUT:
%    Q : Matrix of joint probabilities, where Q(i,j) = Prob[X=i,Y=j] 
%
% See also:
%    CondProb()
%              

%       Author: Saied Hosseini-Khayat
%       Copyright 2006  
%       $Revision: 1.0 $  
%       $Date: September 2006 $

% START

[Xrows,Xcols] = size(X);
[Prows,Pcols] = size(P);

if (Xrows~=Prows)|(Prow<2)|(Pcols<2)|(Xcols~=1)
    error('Wrong input dimesions');
end

for j = 1:Pcols
    Q(:,j) = P(:,j) .* X;
end

% EOF
