#Ejercicio 3 Tema 4

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

#Este es el metodo p-1 de Pollard
PollardP1 := function (n,a,l) #l es el numero maximo de iteraciones que vamos a permitir
    local d,m, i;
    d := Euclides(n,a);
    if 1<d and d<n then
       return d;
    fi;
    if d=n then
       Print("Los dos datos de entrada han de ser coprimos");
       return false;
    fi;
    m := a;
    d := 1;
    i := 1;
    while d=1 do
       m := m^i mod n;
       d := Euclides(m-1,n);
       i := i+1;
       if d=n then
          Print("No se ha encontrado ningun divisor propio");
          return false;
       fi;
       if i=l then #Nos aseguramos de no sobrepasar un numero maximo de iteraciones
          Print("Superado el numero maximo de iteraciones");
          return false;
       fi;
    od;
    return d;
end;

#Factorizacion rho de Pollard, usando la segunda version de los apuntes
PollardRho := function(n,a,f,l) #l maximo de iteraciones
    local i, j, b, x, d;
    i := 1;
    j := 2;
    b := a;
    x := a;
    d := 1;
    while d=1 do
       x := f(x);
       d := Euclides(x-b,n);
       if d=n then
          Print("El algoritmo fue incapaz de encontrar un divisor propio de n");
          return false;
       fi;
       i := i+1;
       if i=l then
          Print("Superado el numero maximo de iteraciones");
          return false;
       fi;
       if i=j then
          j := 2*j; #Ojo error en apuntes
          b := x;
       fi;
    od;
    return d;
end;


#Podemos probar este ultimo metodo definiendo una funcion, lo dejo comentado para 
#poder cargar las funciones y usar las variables que sean, yo las probe con estos valores
#f := function(x)
#    return x^2+5;
#end;

#x := PollardRho(323598855,2,f,100000000000);

#Que da 3, efectivamente un divisor propio de n
