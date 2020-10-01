#Ejercicio 1 Tema 3
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

EsPrimo := function(n)
    local primos, d;
    primos := CErastotenes (n);
    d := Size(primos);
    if n = primos[d] then
       return true;
    else 
       return false;
    fi;
end;


#Esto funciona hasta 2^28, ya que gap no permite crear listas de longitud mayor 
#que 2^28-1, y fallaria en la linea indicada. Esto se explica al comienzo de la
#pagina 90 de los apuntes de la asignatura 