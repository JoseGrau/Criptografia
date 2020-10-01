#Exponenciacion Doblando Cuadrados
ExponenciacionDoblandoCuadrados := function(a,n)
    local s, a1, c, r;
    c := n;
    a1 := a;
    s := 1;
    while c <> 0 do
        r := c mod 2;
        c := Int(c/2);
        #Equivale a tomar la lista de la expresion binaria de n
        if r=1 then 
            s:= s*a1;
        fi;
        a1 := a1^2;
    od;
    return s;
end;