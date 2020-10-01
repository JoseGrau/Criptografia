#Funcion para calcular la entropia de los simbolos que aparecen en un texto

Entropia := function(x)
local y;
y := Filtered(x,u->u>Float(0));
return -Sum(y,u->u*Log(u)/Log(Float(Length(x))));
end;


#Funcion que utilizando el concepto de entropia calcule una estimacion de la 
#longitud de la clave de un texto cifrado con el criptosistema de Vigenere

EntropiaLista := function(x)
local Simbolos,fr;
Simbolos := SSortedList(x);
fr := List(Simbolos,a->Float(Length(Positions(x,a))))/Length(x);
return Entropia(fr);
end;

for l in [1..20] do
    trozos := Sublistas(C,l); 
    Print("\n",[l,Sum(List(trozos,EntropiaLista))/l]);
od;
 
#Donde el mensaje cifrado es C, y esto me dara una lista con las entropias.
#Cuando haya un descenso brusco de la entropia en la lista, es probable que esa 
#sea la longitud de la clave, luego es un candidato con el que probar