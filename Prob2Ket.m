function Y = Prob2Ket(P)
%--------------------------------------------------------------------------
% Prob2Ket(P) inputs a discrete probability distribution P and returns a 
% quantum state vector (i.e., a ket vector). 
%
% INPUT: 
%     P: real array of finite length n, such that sum(P)=1.
%        This array denotes a discrete probability density distribution. 
%        If sum(P)=1 is not true, this function first makes it true by 
%        dividing P by sum(P).
%
% OUTPUT:
%     Y: ket vector from n-dimentional Hilbert space
%     Note: A 'ket' is a normalized complex column vector.
%
%     See also:
%         Qubit(), Vect2Ket()

%     Author: Saied Hosseini Khayat
%     Copyright 2008
%     $Revision: 1.0 $  
%     $Date: July 2008 $

% START

[rows,cols] = size(A);

% error checks
if (cols~=1)|(rows<2)
   error('Wrong input array dimensions');
end

Y = zeros(rows,1);
Y = sqrt(A/sum(A));

% EOF
