function [xp] = f(t,y)
%y = [ uvo wo 0 0 0 0 titacero ];
%y = [vo po ro fio];
global rho 
global vinf
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
global Cnp

Cyb = -0.01242 ;
Clb = -0.00787 ;
Clp = -4.5 ;
Clr = 0.5 ;
Cnr = 0.38 ;
Cnp = -0.8 ;
vinf = sqrt(y(1)^2 + y(2)^2 + y(3)^2) ;

xp(1)= ((0.5*rho*vinf^2*sup*(Cyb*y(1))+ m*g*y(4))/ m) ;
xp(2)= (0.5*rho*vinf^2*sup*b*(Clb*y(1) +  (Clp*(y(3)*b)/(2*vinf)))/(2*Ix));
xp(3)= 0.5*(rho*vinf^2*sup*b*(Cnr*((y(2)*y(1))/2*vinf) +  Cnp*(y(3)*b)/2*vinf))/Iz ;
xp(4)= y(2);

xp = xp';
    



end


