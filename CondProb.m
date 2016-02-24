function Q = CondProb(P)
%--------------------------------------------------------------------------
% CondProb(P) computes conditional probabilities P(Y|X) from joint probabilities P(X,Y). 
% X,Y are discrete variables over a finite set.
%
% INPUT:
%    P : Matrix of joint probabilities P(X,Y), where P[i,j] = Prob[X=i,Y=j]
%
% OUTPUT:
%    Q : Matrix of conditional probabilities, where Q(i,j) = Prob[Y=j|X=i] 
%
% See also:
%    JointProb()
%              

%       Author: Saied Hosseini Khayat
%       Copyright 2008
%       $Revision: 1.0 $  
%       $Date: September 2008 $

% START

[rows,cols] = size(P);

if (rows<2)|(cols<2)
   error('wrong input dimensions');
end

S = sum(P');

for i = 1:rows
   Q(i,:) = P(i,:) / S(i);
end

% EOF
