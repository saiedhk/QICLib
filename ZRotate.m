function Y = ZRotate(theta)
%--------------------------------------------------------------------------
% ZRotate(theta) returns a unitary operator that rotates a qubit by angle theta
% around Z axis in Bloch sphere.
%
% INPUT: 
%    theta : angle in radians
%
% OUTPUT:
%    Y : 2x2 matrix (ZRotate Operator)
%
% See also:
%        XRotate(), YRotate()  

%       Author: Saied Hosseini Khayat
%       Copyright 2008  
%       $Revision: 1.0 $  
%       $Date: July 2008 $

% START

t = theta/2;

Y = [ exp(-i*t)  0 ; 0  exp(i*t) ];

%EOF