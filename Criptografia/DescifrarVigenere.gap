#DescifrarVigenere
DescifrarVigenere := function(cf,clave)
local LClave;
LClave := Length(clave);
return List([0..Length(cf)-1],
x -> CharInt((cf[x+1] - clave[(x mod LClave)+1]) mod 256) );
end;