function Y = XRotate(theta)
%--------------------------------------------------------------------------
% XRotate(theta) returns a unitary operator that rotates a qubit by angle theta
% around X axis in Bloch sphere.
%
% INPUT: 
%    theta : angle in radians
%
% OUTPUT:
%    Y : 2x2 matrix (XRotate Operator)
%
% See also:
%        YRotate(), ZRotate()  

%       Author: Saied Hosseini Khayat
%       Copyright 2008  
%       $Revision: 1.0 $  
%       $Date: July 2008 $

% START

t = theta/2;

Y = [cos(t)   -i*sin(t) ; -i*sin(t)  cos(t) ];

%EOF