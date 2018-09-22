clear; clc


global vinf
global rho 
%global sup
global b
%global c
global g
global m
%global de
global Ix
%global Iy
global Iz
global Cyb
global Clb
global Clp
global Clr
global Cnr
%global Cnp


%% Declaracion de variables
B = 0.5*rho*vinf^2;
C1 = (B/m) * (Cyb);
C2 = g;
C3 = (B*b*Clb)/(2*Ix);
C4 = (B*b/Ix)*Clb*(b/(2*vinf));
C5 = (B*Clr/Ix)*(b/(2*vinf));
C6 = (B*Cnr/Iz)*(b/(2*vinf));
C7 = (B*Clp/Iz)*(b/(2*vinf));

%% Sistema matricial

A = [...
     C1 , 0  , 0  , C2 ; ...
     C3 , C4 , C5 , 0  ; ...
     0  , C6 , C7 , 0  ; ...
     0  , 1  , 0  , 0  ; ...
    ]

[Vec, Val] = eig(A)