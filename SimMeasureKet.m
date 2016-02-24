function Y = SimulateMeasureKet(psi);
%--------------------------------------------------------------------------
% SimulateMeasureKet(psi) simulates a measurement on psi in computational basis
% and returns a modified ket which is produced as a result of the measurement.
%
% INPUT:
%     psi : ket, state before measurement
%
% OUTPUT:
%     Y : ket, being the state after measurement
%
% See also:
%     MeasureKet()

%       Author: Saied Hosseini Khayat
%       Copyright 2008
%       $Revision: 1.0 $
%       $Date: July 2008 $


%START

[rows,cols] = size(psi);

if (cols~=1) | (rows<2)
   error('Wrong input dimensions')
end

x = rand;
temp = 0;

for i=1:r
    temp = psi(i) * conj( psi(i) )';
    if (x <= temp)
        break;
    end
end

Y = zeros(rows,1);
Y(i) = 1;

% EOF
