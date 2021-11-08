import 'dart:io';
import 'dart:math';
main() {
  print(
      '\n\n******************************************************');
  num opc = 0;
  String entrada;

  do {
    print(
        '\n\n*Menú de programas\n\n0. Salir\n1. Area y perimetro de un paralelogramo\n2. Calculadora de potencias\n3. Oranizador de arreglo\n4. Raíz y potencia de un valor usando funciones');
    do {
      entrada = stdin.readLineSync().toString();
    } while (int.tryParse(entrada) == null ||
        (int.parse(entrada) < 0 || int.parse(entrada) > 4));
    opc = int.parse(entrada);
    if (opc == 0) break;
    switch (opc) {
      //1. Paralelogramo
      case 1:
        String B;
        String A;
        String L;
        print('\n\n1. Area y perimetro de un paralelogramo\n');
        do {
          print('Teclea el valor de la base:');
          B = stdin.readLineSync().toString();
        } while (int.tryParse(B) == null || B == '0');
        do {
          print('Teclea el valor de la altura:');
          A = stdin.readLineSync().toString();
        } while (int.tryParse(A) == null || A == '0');
        do {
          print('Teclea el valor de un lado (izquierdo ó derecho):');
          L = stdin.readLineSync().toString();
        } while (int.tryParse(L) == null || L == '0');
        print('\n-Area: ${int.parse(A) * int.parse(B)}');
        print('-Perimetro: ${(int.parse(B) * 2) + (int.parse(L) * 2)}');
        print('\n*Presiona cualquier tecla para continuar*');
        stdin.readLineSync();
        break;
      // 2. Potencias
      case 2:
        int b;
        int p;
        String entrada;
        print('\n\n2. Calculadora de potencias\n');
        print('Teclea el valor para la base:');
        do {
          entrada = stdin.readLineSync().toString();
        } while (int.tryParse(entrada) == null);
        b = int.parse(entrada);
        print('Teclea el valor para la potencia:');
        do {
          entrada = stdin.readLineSync().toString();
        } while (int.tryParse(entrada) == null);
        p = int.parse(entrada);
        print('\n-Resultado: ${pow(b,p)}');
        print('\n*Presiona cualquier tecla para continuar*');
        stdin.readLineSync();
        break;
      // 3. Arreglo
      case 3:
        print('\n\n3. Oraganizador de arreglo\n');
        List<int> vectorInit = [];
        List<int> vectorPar = [];
        List<int> vectorImpar = [];
        String entrada;
        print('Introduce numeros enteros:');
        for (var i = 0; i < 30; i++) {
          do {
            print('Leyendo posición ${i}:');
            entrada = stdin.readLineSync().toString();
          } while (int.tryParse(entrada) == null);
          vectorInit.add(int.parse(entrada));
        }
        for (int i = 0; i < vectorInit.length; i++) {
          if(vectorInit[i] % 2 == 0 && vectorInit[i] != 0){
            vectorPar.add(vectorInit[i]);
          }
          if(vectorInit[i] % 2 != 0){
            vectorImpar.add(vectorInit[i]);
          }
        }
        print('\n-Vector Inicial: ${vectorInit}');
        print('-Vector Par: ${vectorPar}');
        print('-Vector Impar: ${vectorImpar}');
        print('\n*Presiona cualquier tecla para continuar*');
        stdin.readLineSync();
        break;
      case 4:
        print('\n\n4. Raíz y potencia de un valor usando funciones\n');
        String entrada;
        int x = 0;
        int p = 0;
        print('Introduce el valor base:');
        do {
          entrada = stdin.readLineSync().toString();
        } while (int.tryParse(entrada) == null);
        x = int.parse(entrada);
        print('Introduce el valor potencia:');
        do {
          entrada = stdin.readLineSync().toString();
        } while (int.tryParse(entrada) == null);
        p = int.parse(entrada);
        print('\n-Raiz: ${raiz(x)}');
        print('-Potencia: ${pot(x, p)}');
        print('\n*Presiona cualquier tecla para continuar*');
        stdin.readLineSync();
        break;
    }
  } while (opc != 0);
  opc = int.parse(entrada);
  print('\n\n******************************************************\n\n');
  return 0;
}

num raiz (int x){
  return sqrt(x);
}

num pot (int x, int p){
  return pow(x, p);
}
