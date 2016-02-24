%--------------------------------------------------------------------------
% This module defines the following special Qubits, Operators and Gates:
%
%    Qu0: Qubit Zero
%    Qu1: Qubit One
%    PauliI : Pauli I matrix
%    PauliX : Pauli X matrix
%    PauliY : Pauli Y matrix
%    PauliZ : Pauli Z matrix
%    TGate : T matrix
%    SGate : S matrix
%    Hadamard : Hadamard matrix
%    CNOT : Controlled-NOT operator/gate
%    Fredkin : Fredkin 3-qubit gate
%    Toffoli : Toffoli 3-qubit gate
% 
%    See also:
%        none           

%     Author: Saied Hosseini Khayat
%     Copyright 2008  
%     $Revision: 1.0 $  
%     $Date: July 2008 $


Qu0 = [1;0];
Qu1 = [0;1];

% Pauli I matrix
PauliI = [1 0;0 1];

% Pauli X matrix
PauliX = [0 1;1 0];

% Pauli Y matrix
PauliY = [0 -i;i 0];

% Pauli Z matrix
PauliZ = [1 0;0 -1];

% Hadamard H matrix
Hadamard = (1/sqrt(2))*[1 1;1 -1];

% T matrix or pi/8 Gate
TGate = [1 0; 0  exp(i*pi/4)];

% S matrix or Phase Gate
SGate = [1 0;0 i];

% CNOT matrix or CNOT Gate
CNOT = [1 0 0 0;
        0 1 0 0; 
        0 0 0 1; 
        0 0 1 0];

% Fredkin matrix or Fredkin Gate
Fredkin = [1 0 0 0 0 0 0 0; 
           0 1 0 0 0 0 0 0; 
           0 0 1 0 0 0 0 0;
           0 0 0 0 0 1 0 0;               
           0 0 0 0 1 0 0 0;               
           0 0 0 1 0 0 0 0;               
           0 0 0 0 0 0 1 0;               
           0 0 0 0 0 0 0 1];

% Toffoli matrix or Toffoli Gate
Toffoli = [1 0 0 0 0 0 0 0; 
           0 1 0 0 0 0 0 0; 
           0 0 1 0 0 0 0 0;
           0 0 0 1 0 0 0 0;               
           0 0 0 0 1 0 0 0;               
           0 0 0 0 0 1 0 0;               
           0 0 0 0 0 0 0 1;               
           0 0 0 0 0 0 1 0];

% EOF
