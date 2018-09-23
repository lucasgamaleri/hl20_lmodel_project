clear; clc


global vinf
global rho 
global sup
global b
global g
global m
global Ix
global Iz
global Cyb
global Clb
global Clp
global Clr
global Cnr


%% Declaracion de variables
B = 0.5*rho*vinf*sup;
C1 = (B/m) * (Cyb);
C2 = g;
C3 = (B*Clb)/Ix;
C4 = B*b^2*Clp/(2*Ix);
C5 = B*Clr*b^2/(4*Ix);
C6 = B*Cnr*b^2/(2*Iz);
C7 = B*Clp*b^2/(2*Iz);

%% Sistema matricial

A = [...
     C1 , 0  , 0  , C2 ; ...
     C3 , C4 , C5 , 0  ; ...
     0  , C6 , C7 , 0  ; ...
     0  , 1  , 0  , 0  ; ...
    ]

[vec, val] = eig(A)
