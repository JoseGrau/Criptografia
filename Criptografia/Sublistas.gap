#Sublistas

Sublistas := function(lista,l)
local n,r,q,TrozoLista,trozos,x;
n := Length(lista);
r := n mod l;
q := (n-r)/l;
###########################
TrozoLista := function(x)
if x <= r then
return List([0..q],y->lista[x+l*y]);
else
return List([0..q-1],y->lista[x+l*y]);
fi;
end;
###########################
return List([1..l], x -> TrozoLista(x));
end;