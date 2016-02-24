function Y = YRotate(theta)
%--------------------------------------------------------------------------
% YRotate(theta) returns a unitary operator that rotates a qubit by angle theta
% around Y axis in Bloch sphere.
%
% INPUT: 
%    theta : angle in radians
%
% OUTPUT:
%    Y : 2x2 matrix (YRotate Operator)
%
% See also:
%        XRotate(), ZRotate()  

%       Author: Saied Hosseini Khayat
%       Copyright 2008  
%       $Revision: 1.0 $  
%       $Date: July 2008 $

% START

t = theta/2;

Y = [ cos(t)  -sin(t) ; sin(t)  cos(t) ];

%EOF