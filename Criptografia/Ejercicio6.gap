#Algoritmo de Euclides
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
 
#Para encontrar la solucion de la primera ecuacion diofantica propuesta, usamos
#el algoritmo de Euclides Extendido propuesto en los apuntes. Devuelve d, x0, y0
#en ese orden (por eso el if final)
#Algoritmo de Euclides Extendido
EuclidesExtendido := function(a,b) 
    local r2, r1, u2, v2, u1, v1, q, v, u, r;
    r2:= Maximum(a,b);
    r1:= Minimum(a,b);
    u2:=1;
    v2:=0;
    u1:=0;
    v1:=1;
    while r1 <> 0 do
    q:= Int(r2/r1);
    r:=r1;
    r1:=r2-q*r1;
    r2:=r;
    u:=u1;
    u1:=u2-q*u1;
    u2:=u;
    v:=v1;
    v1:=v2-q*v1;
    v2:=v;        
    od;
    if a<b then
    return [r, v, u];
    fi;
    return [r, u, v];
end;