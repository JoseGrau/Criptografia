#Ejercicio 2 Tema 4

#Algoritmo de Euclides, necesario para el mcd
Euclides := function(a,b)
    local r1, r2, r;
    r2:= Maximum(a,b);
    r1:= Minimum(a,b);
    while r1 <> 0  do
        r:=r1;
        r1:= r2 mod r1;
        r2:=r;  
    od;
    return r;
end;

Fermat := function (n,k)
    local a, b;
    a := RootInt(k*n)+1;
    b := ER(a^2-k*n);
    while IsInt(b)=false do
       a := a+1;
       b := ER(a^2-k*n); 
    od;
    return Euclides(n, a+b);
end;