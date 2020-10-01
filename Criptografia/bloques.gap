#Clase Criptografia 05/11
#Definir  funcion de bloques
Bloques := function(t,n)
local num, l, out, k, a, i; 
    num := List(t,IntChar);
    l := Length(num);
    while l mod n <> 0 do
        Add(num,0);
        l := l+1;
    od;
    out := [];
    for k in [0..(l/n)-1] do
        a := 0;
        for i in [1..n] do
           a := a + num[n*k+i]*256^(n-i);
        od;
        Add(out,a);
    od;
    return out;
end;