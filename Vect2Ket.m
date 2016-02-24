function Y = Vect2Ket(V)
%--------------------------------------------------------------------------
% Vect2Ket(V) inputs a general complex vector A and returns a quantum state 
% vector (i.e., a ket vector). 
%
% INPUT: 
%     V: complex array of finite length n
%
% OUTPUT:
%     Y: ket vector from n-dimentional Hilbert space
%     Note: A 'ket' is a normalized complex column vector.
%
%     See also:
%         Qubit(), Prob2Ket()

%     Author: Saied Hosseini Khayat
%     Copyright 2008
%     $Revision: 1.0 $  
%     $Date: July 2008 $

% START

[rows,cols] = size(V);

% error checks
if (cols~=1)|(rows<2)
   error('Wrong input array dimensions');
end

Y = zeros(rows,1);
vnorm = sqrt(dot(V,V));
Y = V/vnorm;

% EOF
