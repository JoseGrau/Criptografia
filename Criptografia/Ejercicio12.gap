#Ejercicio 12
#Asigno a todo para poder comprobarlo luego

#Apartado (a)

#Simplemente probamos las funciones
a1:=CharInt(100);
a2:=IntChar('b');

#Como estamos en un fichero de texto que habrá que leer, se puede hacer igual
a3 := IntChar('ñ');


#Apartado (b)

#Igual que antes
b1:=List("Al andar se hace camino", IntChar);

b2:=List("España",IntChar);


#Apartado (c)

#Probamos con el mismo ejemplo que antes para comprobar con facilidad

c1:=List([65, 108, 32, 97, 110, 100, 97, 114, 32, 115, 101, 32, 104, 97, 99, 101, 32, 99, 97, 109, 105, 110, 111],CharInt);


#Apartado (d)
f := function(list,n)
    local sol, i;
    i := 1;
    sol := 0;
    for i in [1..n] do
        sol := sol + list[i]*256^(i-1);
        i:=i+1;
    od;
    return sol;
end;

g := function (x, n)
    local sol, i;
    i:=1;
    sol := ListWithIdenticalEntries(n,0);
    for i in [1..n] do
       sol[i] := x mod 256;
       x := Int(x/256);
    od;
    return sol;
end;


#Apartado (e)
                                                                                                                         
f1 := function (texto, n)
    local x, t;
    t := List(texto, IntChar);
    x:=f(t,n);        
    return x;
end;

g1 := function (x, n)
    local texto, t;
    t:=g(x,n);
    texto:=List(t,CharInt);
    return texto;
end;