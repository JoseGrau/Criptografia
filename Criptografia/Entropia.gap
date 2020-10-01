#Entropia

Entropia := function(x)
local y;
y := Filtered(x,u->u>Float(0));
return -Sum(y,u->u*Log(u)/Log(Float(Length(x))));
end;


EntropiaLista := function(x)
local Simbolos,fr;
Simbolos := SSortedList(x);
fr := List(Simbolos,a->Float(Length(Positions(x,a))))/Length(x);
return Entropia(fr);
end;


