#Ejercicio 3 Tema 3
SimboloDeJacobi := function (n,m)
    local x, aux;
    if Gcd(n,m) <> 1 then
       return 0;
    fi;
    x := 1;
    while m/2 = 0 mod 2 do
       m := m/2;
    od;
    while m <> 1 do
       n := n mod m;
       while n = 0 mod 4 do
          n := n/4;
       od;
       if n = 0 mod 2 then
          n := n/2;
          if m = 3 mod 8 or m = -3 mod 8 then
             x := -x;
          fi;
       fi;
       if (n-1)*(m-1) = 4 mod 8 then
          x := -x;
       fi;
       aux := n;
       n := m;
       m := aux;
    od;
    return x;
end;