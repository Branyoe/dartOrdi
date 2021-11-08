import 'dart:io';
main (){
  num x;
  String entrada = '';

  print('Introduce un valor en metros');

  entrada = stdin.readLineSync().toString();
  x = int.parse(entrada);


  print('El equivalente en centimetros es: ${x * 100} cm');

}