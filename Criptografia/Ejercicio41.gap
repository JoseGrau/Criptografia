#Ejercicio 1 Tema 4
CErastotenes := function(n)
    local lista, p, primos, multiplos;
    lista := [2..n]; #Aqui
    p := 2;
    primos := [2];
    while p^2 <= n do
       multiplos := List ([1..QuoInt(n,p)], x->p*x);
       lista := Difference(lista,multiplos);
       p := lista[1];
       Add(primos, p); 
    od;
    return Concatenation(primos, lista);
end;

Descomposicion := function(n)
    local Primos, solucion, i, l;
    Primos := CErastotenes(1000000);
    solucion := [];
    i := 1;
    l := Length(Primos);
    for i in [1..l] do 
        while IsInt(n/Primos[i]) do
           n := n/Primos[i]; 
           Add(solucion, Primos[i]);
        od;
            
    od;
    if n <> 1 then
       Print("Hay mas primos en la descomposicion mayores a 1000000 ");
    fi;
    return solucion;
end;