%funcion sobre sesitencia 
%PARA SU BUEN USO COLOQUE  CalculoResistencia(nombre del material,longitud del material,radio del material,temperatura del material)
function [Resistencia] = CalculoResistencia(name,lon,rad,temp)
metales.names =["cobre";"plata";"oro";"aluminio";"hierro";"platino";"tungsteno";"mercurio"];
metales.rhos = [1.68*10^-8;1.59*10^-8;2.44*10^-8;2.65*10^-8;9.71*10^-8;10.60*10^-8;5.60*10^-8;98.00*10^-8;];
metales.alpha = [0.0039;0.0038;0.0034;0.0039;0.0045;0.0009];
table = find(metales.names==name);
a=2*3.14*(((rad/2)/1000)^2);
r= metales.rhos(table)*(lon/a);
Resistencia=r*(1+(metales.alpha(table)*temp));
fprintf('la resistencia es = %d',Resistencia)
end