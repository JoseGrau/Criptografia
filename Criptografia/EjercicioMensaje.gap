#Ejercicio. Mensaje mandado por el profesor

#La lista esta hecha mediante el comando IntChar, enviada por correo por el
#profesor y codificada con Vigenere. El objetivo es obtener el mensaje

C := [ 152, 227, 219, 144, 197, 199, 140, 202, 182, 228, 223, 144, 198, 218, 220,
  202, 181, 233, 219, 227, 129, 199, 223, 133, 147, 218, 208, 226, 208, 130,
  184, 218, 168, 227, 211, 223, 141, 130, 220, 212, 181, 233, 205, 230, 208,
  220, 140, 201, 168, 149, 177, 211, 208, 206, 219, 204, 172, 232, 224, 209,
  212, 130, 209, 211, 99, 182, 207, 211, 202, 37, 31, 211, 111, 149, 221,
  229, 198, 130, 209, 216, 183, 56, 13, 144, 212, 203, 211, 218, 172, 218,
  218, 212, 208, 130, 216, 212, 99, 230, 225, 213, 129, 209, 207, 218, 181,
  231, 209, 144, 198, 208, 140, 202, 175, 149, 217, 209, 211, 130, 185, 202,
  177, 228, 222, 144, 197, 199, 223, 201, 168, 149, 216, 209, 129, 210, 222,
  212, 179, 222, 205, 144, 205, 195, 211, 218, 177, 214, 154, 144, 136, 167,
  223, 133, 164, 225, 211, 223, 129, 211, 225, 202, 99, 225, 216, 213, 215,
  195, 217, 212, 182, 149, 205, 230, 202, 213, 205, 211, 167, 228, 140, 212,
  198, 213, 208, 202, 99, 221, 205, 211, 198, 130, 159, 149, 99, 214, 47,
  33, 208, 213, 154, 133, 139, 214, 229, 144, 206, 215, 207, 205, 164, 149,
  211, 213, 207, 214, 209, 133, 180, 234, 209, 144, 198, 213, 224, 40, 228,
  149, 209, 211, 201, 195, 218, 201, 178, 149, 216, 209, 129, 197, 225, 209,
  179, 214, 140, 209, 129, 206, 205, 216, 99, 56, 38, 220, 213, 203, 217,
  198, 182, 149, 216, 220, 214, 216, 213, 198, 182, 149, 224, 223, 211, 212,
  209, 211, 166, 222, 205, 220, 198, 213, 152, 133, 179, 218, 222, 223, 141,
  130, 219, 199, 185, 222, 205, 221, 198, 208, 224, 202, 111, 149, 209, 227,
  213, 209, 140, 211, 178, 149, 219, 211, 214, 212, 222, 202, 99, 229, 219,
  226, 129, 215, 218, 133, 169, 218, 218, 51, 20, 207, 209, 211, 178, 149,
  217, 213, 213, 199, 219, 215, 178, 225, 47, 35, 200, 203, 207, 212, 99,
  232, 213, 222, 208, 130, 221, 218, 168, 149, 212, 209, 218, 130, 217, 218,
  166, 221, 219, 144, 206, 37, 13, 216, 99, 217, 209, 228, 211, 37, 13, 216,
  99, 238, 140, 220, 194, 130, 207, 218, 175, 229, 205, 144, 197, 199, 216,
  133, 182, 218, 222, 144, 201, 215, 217, 198, 177, 228, 140, 213, 212, 130,
  207, 209, 164, 231, 205, 151, 141, 130, 209, 221, 179, 225, 213, 211, 194,
  130, 184, 218, 168, 227, 211, 223, 129, 199, 218, 133, 166, 228, 218, 230,
  198, 212, 223, 198, 166, 222, 47, 35, 207, 130, 207, 212, 177, 149, 192,
  213, 204, 208, 205, 218, 183, 214, 223, 158, 129, 181, 209, 204, 6, 47,
  218, 144, 198, 213, 224, 202, 99, 218, 207, 223, 205, 209, 211, 206, 182,
  233, 205, 156, 129, 206, 205, 133, 170, 228, 224, 209, 129, 200, 222, 40,
  240, 214, 140, 227, 208, 206, 219, 133, 171, 214, 140, 209, 200, 212, 205,
  219, 164, 217, 219, 144, 198, 206, 140, 213, 181, 228, 206, 220, 198, 207,
  205, 145, 99, 229, 209, 226, 208, 130, 208, 202, 165, 218, 217, 223, 212,
  130, 217, 206, 181, 214, 222, 144, 206, 215, 207, 205, 178, 149, 217, 51,
  2, 213, 140, 198, 99, 225, 205, 144, 194, 201, 222, 206, 166, 234, 216,
  228, 214, 212, 205, 133, 172, 227, 224, 213, 207, 213, 213, 219, 164, 149,
  229, 144, 194, 130, 216, 198, 99, 219, 205, 220, 213, 195, 140, 201, 168,
  149, 217, 213, 197, 203, 208, 198, 182, 149, 220, 209, 211, 195, 140, 213,
  181, 228, 224, 213, 200, 199, 222, 133, 175, 214, 140, 234, 208, 208, 205,
  147, 99, 156, 184, 209, 212, 130, 216, 209, 184, 235, 213, 209, 212, 130,
  212, 198, 177, 149, 205, 214, 198, 197, 224, 198, 167, 228, 152, 144, 198,
  213, 224, 40, 228, 149, 207, 220, 194, 212, 219, 145, 99, 229, 209, 226,
  208, 130, 223, 218, 99, 222, 217, 224, 194, 197, 224, 212, 99, 221, 205,
  210, 211, 37, 25, 198, 99, 232, 213, 212, 208, 130, 217, 218, 166, 221,
  219, 144, 206, 199, 218, 212, 181, 149, 223, 217, 129, 206, 205, 133, 189,
  228, 218, 209, 129, 199, 223, 217, 184, 235, 213, 213, 212, 199, 140, 213,
  181, 218, 220, 209, 211, 195, 208, 198, 99, 229, 205, 226, 194, 130, 209,
  216, 183, 228, 223, 144, 196, 195, 223, 212, 182, 149, 229, 144, 212, 199,
  140, 204, 168, 232, 224, 217, 208, 208, 205, 216, 168, 149, 216, 209, 129,
  214, 213, 202, 181, 231, 205, 144, 197, 199, 216, 133, 175, 234, 211, 209,
  211, 130, 208, 202, 99, 228, 224, 226, 194, 130, 210, 212, 181, 226, 205,
  156, 129, 210, 209, 211, 182, 214, 218, 212, 208, 130, 209, 211, 99, 233,
  219, 212, 208, 130, 209, 209, 99, 232, 213, 227, 213, 199, 217, 198, 113,
  149, 177, 220, 129, 195, 211, 218, 164, 149, 212, 209, 129, 195, 222, 215,
  164, 232, 224, 226, 194, 198, 219, 133, 176, 234, 207, 216, 208, 213, 140,
  211, 184, 233, 222, 217, 198, 208, 224, 202, 182, 149, 221, 229, 198, 130,
  212, 198, 177, 149, 205, 211, 194, 196, 205, 201, 178, 149, 209, 222, 129,
  199, 216, 133, 176, 214, 222, 144, 174, 199, 218, 212, 181, 161, 140, 209,
  218, 215, 208, 198, 177, 217, 219, 144, 194, 130, 216, 198, 99, 218, 225,
  228, 211, 209, 210, 206, 189, 214, 207, 217, 36, 21, 218, 133, 167, 218,
  216, 144, 194, 201, 225, 198, 99, 238, 152, 144, 209, 209, 222, 133, 183,
  214, 218, 228, 208, 142, 140, 198, 99, 225, 205, 144, 198, 206, 213, 210,
  172, 227, 205, 211, 202, 37, 31, 211, 99, 217, 209, 220, 129, 209, 228,
  40, 240, 220, 209, 222, 208, 130, 221, 218, 168, 149, 218, 213, 196, 199,
  223, 206, 183, 214, 218, 144, 205, 209, 223, 133, 178, 231, 211, 209, 207,
  203, 223, 210, 178, 232, 140, 212, 198, 130, 216, 198, 99, 225, 205, 215,
  214, 208, 205, 133, 179, 214, 222, 209, 129, 213, 219, 199, 181, 218, 226,
  217, 215, 203, 222, 145, 99, 229, 209, 226, 208, 130, 216, 198, 99, 216,
  219, 227, 194, 130, 209, 216, 99, 230, 225, 213, 129, 215, 218, 133, 169,
  218, 218, 51, 20, 207, 209, 211, 178, 149, 207, 223, 206, 209, 140, 202,
  182, 233, 209, 144, 207, 209, 140, 201, 168, 215, 209, 226, 36, 15, 205,
  133, 171, 214, 206, 213, 211, 130, 205, 203, 168, 216, 224, 209, 197, 209,
  140, 217, 164, 227, 224, 223, 136, 142, 140, 201, 168, 233, 205, 220, 205,
  195, 140, 202, 175, 149, 209, 227, 209, 199, 207, 206, 164, 225, 213, 227,
  213, 195, 154, 133, 143, 228, 140, 225, 214, 199, 140, 212, 166, 234, 222,
  226, 198, 130, 209, 211, 99, 225, 205, 144, 205, 195, 211, 218, 177, 214,
  140, 211, 194, 212, 224, 198, 170, 218, 218, 213, 211, 195, 140, 216, 168,
  149, 207, 223, 207, 209, 207, 202, 99, 218, 218, 228, 211, 199, 140, 209,
  178, 232, 140, 211, 202, 199, 218, 217, 6, 34, 210, 217, 196, 209, 223,
  133, 181, 218, 216, 209, 196, 203, 219, 211, 164, 217, 219, 227, 129, 197,
  219, 211, 99, 225, 205, 144, 198, 197, 219, 209, 178, 220, 47, 29, 194,
  130, 207, 212, 176, 228, 140, 229, 207, 130, 220, 215, 178, 216, 209, 227,
  208, 130, 208, 202, 99, 218, 225, 228, 211, 209, 210, 206, 189, 214, 207,
  217, 36, 21, 218, 147, 99, 186, 223, 228, 208, 130, 223, 202, 99, 217,
  205, 144, 196, 215, 205, 211, 167, 228, 140, 213, 217, 203, 223, 217, 168,
  149, 225, 222, 194, 130, 205, 200, 184, 226, 225, 220, 194, 197, 213, 40,
  246, 227, 140, 212, 198, 130, 222, 202, 182, 222, 208, 229, 208, 213, 140,
  212, 181, 220, 47, 17, 207, 203, 207, 212, 182, 149, 209, 222, 129, 220,
  219, 211, 164, 232, 140, 212, 198, 130, 205, 204, 184, 214, 140, 228, 194,
  208, 224, 212, 99, 226, 205, 226, 202, 208, 205, 216, 99, 216, 219, 221,
  208, 130, 208, 202, 99, 214, 211, 229, 194, 130, 208, 218, 175, 216, 209,
  156, 129, 210, 222, 212, 185, 228, 207, 209, 207, 198, 219, 133, 175, 214,
  140, 224, 211, 209, 216, 206, 169, 218, 222, 209, 196, 203, 47, 24, 177,
  149, 208, 213, 129, 197, 213, 202, 181, 233, 205, 227, 129, 195, 216, 204,
  164, 232, 154, 144, 35, 33, 188, 212, 181, 149, 221, 229, 36, 11, 140,
  202, 182, 149, 224, 209, 207, 130, 220, 202, 181, 223, 225, 212, 202, 197,
  213, 198, 175, 180, 140, 192, 214, 199, 223, 133, 179, 228, 222, 225, 214,
  199, 140, 202, 182, 233, 205, 227, 129, 195, 216, 204, 164, 232, 140, 211,
  211, 199, 207, 202, 177, 149, 223, 217, 207, 130, 220, 198, 181, 214, 222,
  144, 218, 130, 205, 200, 164, 215, 205, 222, 129, 197, 219, 211, 182, 234,
  217, 217, 198, 208, 208, 212, 99, 218, 216, 144, 208, 218, 47, 18, 170,
  218, 218, 223, 129, 198, 209, 133, 175, 214, 140, 210, 194, 206, 223, 198,
  99, 217, 209, 144, 194, 201, 225, 198, 113, 149, 191, 217, 129, 195, 140,
  202, 182, 228, 140, 227, 198, 130, 223, 218, 176, 214, 140, 213, 205, 130,
  208, 202, 175, 222, 207, 209, 197, 209, 140, 202, 166, 228, 223, 217, 212,
  214, 209, 210, 164, 149, 221, 229, 198, 130, 224, 206, 168, 227, 209, 144,
  198, 206, 140, 210, 164, 231, 140, 189, 198, 208, 219, 215, 111, 149, 207,
  223, 207, 130, 225, 211, 164, 149, 222, 213, 207, 209, 226, 198, 166, 222,
  47, 35, 207, 130, 208, 202, 99, 214, 211, 229, 194, 130, 206, 198, 182,
  233, 205, 222, 213, 199, 140, 209, 172, 226, 213, 228, 194, 198, 205, 145,
  99, 232, 209, 144, 194, 197, 205, 199, 164, 149, 207, 223, 207, 130, 207,
  198, 182, 228, 223, 144, 196, 209, 217, 212, 99, 225, 219, 227, 129, 216,
  213, 216, 183, 228, 223, 144, 198, 213, 224, 198, 182, 149, 47, 42, 205,
  214, 213, 210, 164, 232, 140, 227, 198, 207, 205, 211, 164, 232, 154, 144,
  136, 174, 205, 216, 99, 222, 217, 51, 2, 201, 209, 211, 168, 232, 140,
  227, 198, 130, 207, 206, 6, 38, 209, 222, 129, 195, 140, 209, 178, 149,
  219, 211, 214, 212, 222, 206, 167, 228, 140, 213, 212, 214, 219, 216, 99,
  217, 47, 29, 194, 213, 140, 202, 177, 149, 216, 209, 212, 130, 219, 215,
  172, 225, 216, 209, 212, 142, 140, 214, 184, 218, 140, 213, 212, 130, 208,
  212, 177, 217, 209, 144, 215, 199, 217, 212, 182, 149, 205, 144, 209, 199,
  207, 202, 182, 149, 229, 144, 208, 214, 222, 212, 182, 149, 205, 222, 202,
  207, 205, 209, 168, 232, 140, 225, 214, 199, 140, 216, 168, 149, 220, 229,
  198, 198, 209, 211, 99, 226, 219, 230, 198, 212, 140, 222, 99, 221, 225,
  217, 211, 130, 205, 204, 178, 227, 213, 234, 194, 208, 208, 212, 111, 149,
  220, 213, 211, 209, 140, 209, 178, 149, 220, 213, 208, 212, 140, 202, 182,
  233, 47, 17, 129, 199, 218, 133, 168, 225, 140, 214, 208, 208, 208, 212,
  113, 149, 176, 213, 212, 198, 209, 133, 171, 214, 207, 213, 129, 213, 209,
  210, 164, 227, 205, 227, 141, 130, 209, 209, 99, 219, 219, 222, 197, 209,
  140, 201, 168, 225, 140, 221, 194, 212, 140, 178, 168, 227, 219, 226, 129,
  199, 223, 217, 6, 22, 140, 213, 207, 130, 205, 211, 178, 237, 213, 209,
  129, 219, 140, 217, 178, 217, 219, 144, 205, 209, 140, 214, 184, 218, 140,
  216, 194, 219, 140, 198, 175, 225, 47, 29, 129, 199, 223, 217, 6, 22, 140,
  224, 211, 37, 13, 200, 183, 222, 207, 209, 206, 199, 218, 217, 168, 149,
  217, 229, 198, 212, 224, 212, 111, 149, 220, 229, 198, 213, 140, 209, 164,
  149, 210, 209, 205, 214, 205, 133, 167, 218, 140, 223, 217, 37, 25, 204,
  168, 227, 219, 144, 198, 213, 140, 217, 178, 233, 205, 220, 143, 130, 173,
  201, 168, 226, 47, 17, 212, 142, 140, 209, 178, 232, 140, 223, 211, 201,
  205, 211, 172, 232, 217, 223, 212, 130, 221, 218, 168, 149, 217, 229, 198,
  212, 209, 211, 99, 214, 229, 229, 197, 195, 218, 133, 164, 149, 216, 209,
  129, 199, 225, 217, 181, 228, 210, 217, 219, 195, 207, 206, 6, 40, 218,
  156, 129, 210, 219, 215, 99, 225, 219, 144, 210, 215, 209, 133, 168, 232,
  140, 229, 207, 195, 140, 215, 184, 218, 208, 209, 129, 211, 225, 202, 99,
  227, 219, 144, 209, 195, 222, 198, 106, 161, 140, 209, 36, 19, 205, 201,
  168, 149, 184, 229, 198, 208, 211, 212, 113 ];
  
  
#Las siguientes funciones estan facilitadas en el material de clase
Read("c:/Users/Acer/Desktop/Criptografia/Entropia.gap");
Read("c:/Users/Acer/Desktop/Criptografia/DescifrarVigenere.gap");
Read("c:/Users/Acer/Desktop/Criptografia/Sublistas.gap"); 
Read("c:/Users/Acer/Desktop/Criptografia/MasFrecuente.gap");  
 
#Calculamos las distintas entropias 
for l in [1..20] do
    trozos := Sublistas(C,l); 
    Print("\n",[l,Sum(List(trozos,EntropiaLista))/l]);
od;
 
l := 8;

trozos := Sublistas(C,l);

ClavePosible := List(trozos,MasFrecuente);

#Cambiamos la clave a una m�s l�gica
 ClavePosible[8]:= ClavePosible[8]-69;
 
 #Y desciframos
 D:=DescifrarVigenere(C,ClavePosible);