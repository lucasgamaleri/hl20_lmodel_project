%% Declaración de variables
global rho 
global sup
global b
global c
global g
global m
global de
global Ix
global Iy
global Iz

g = 9.8;
rho = 1.04 ;  
sup = 26.6; 
b = 1.2904 ; % en metros
c = 8.607 ; % en metros
m = hl20.mass ;
Ix = hl20.Ixx ;
Iy = hl20.Iyy ;
Iz = hl20.Izz ;
V = 180;
de = -0.174533 ; %angulo en grados
alphacero = 7 ; %angulo en grados
bethacero = 0 ; %angulo en grados
titacero = 1.5 ; %angulo en radianes

uo = V * cosd(alphacero) * cosd(bethacero);
vo = V * sind(alphacero);
wo = V * sind(alphacero) * cosd(bethacero);
y0 = [vo 0 0 0];
t = [0 5];

%% Modelo numérico

[t,y] = ode45(@f,t,y0);

%% Exportacion de variables
y_lineal = y;
t_lineal = t;

%% Representación gráfica
%y = [vo po ro ficero];

subplot (411), plot(t,y(:,1),'r'), xlabel('t'), ylabel('v'), grid on
subplot (412), plot(t,y(:,2),'r'), xlabel('t'), ylabel('p'), grid on
subplot (413), plot(t,y(:,3),'r'), xlabel('t'), ylabel('r'), grid on
subplot (414), plot(t,y(:,3),'r'), xlabel('t'), ylabel('φ'), grid on
