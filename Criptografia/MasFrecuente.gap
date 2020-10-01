#Funcion para calcular el elemento mas frecuente de una lista

MasFrecuente := function(x)
local simbolos,fa;
simbolos := SSortedList(x);
fa := List(simbolos,s -> Length(Positions(x,s)));  
return simbolos[Position(fa,Maximum(fa))] - 32;
end;
