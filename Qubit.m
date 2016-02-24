function Y = Qubit(theta,phi)
%--------------------------------------------------------------------------
% Qubit(theta,phi) returns a qubit using theta and phi angels in the Bloch sphere.
%
% INPUT: 
%     theta: angle (radians)
%     phi: angle (radians)
%
% OUTPUT:
%     qubit (2-dim ket vector)
%
% See also:
%     Prob2Ket(), Vect2Ket()

%     Author: Saied Hosseini Khayat
%     Copyright 2006  
%     $Revision: 1.0 $  
%     $Date: July 2006 $

% START

Y = [ cos(theta/2) ; exp(i*phi) * sin(theta/2) ]; 

%EOF
