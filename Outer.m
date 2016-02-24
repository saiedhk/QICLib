function Y = Outer(V,U)
%--------------------------------------------------------------------------
% Outer(V,U) computes the outer product of two ket vectors V and U.
%
% INPUT: 
%     V : n x 1 ket vector
%     U : n x 1 ket vector
%
% OUTPUT:
%     Y : n x n complex matrix
%         
% See also:
%      Inner()

%      Author: Saied Hosseini-Khayat
%      Copyright 2008
%      $Revision: 1.0 $  
%      $Date: July 2008 $

% START

[Vr,Vc] = size(V);
[Ur,Uc] = size(U);

if (Vc~=1) | (Vr<2) | (Uc~=1) | (Ur<2)
   error('Wrong input dimensions');
end

Y = V * U';

%EOF





