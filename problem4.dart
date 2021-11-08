import 'dart:io';
import 'dart:math';
main (){
  int x;
  String entrada = '';

  do {
    print('Introduce un valor:');
    entrada = stdin.readLineSync().toString();
  } while (int.tryParse(entrada) == null);

  x = int.parse(entrada);

  print('5ta potencia: ${pot5(x)}');
  print('raiz: ${raiz(x)}');
}

num pot5 (int x){
  return pow(x, 5);
}

num raiz (int x){
  return sqrt(x);
}