import 'dart:io';
main() {
  int h, b;
  String entrada = '';

  print('Introduce el valor de la altura:');
  entrada = stdin.readLineSync().toString();
  h = int.parse(entrada);

  print('Introduce el valor de la base:');
  entrada = stdin.readLineSync().toString();
  b = int.parse(entrada);

  print('Area: ${b*h} ');
  print('Perimetro: ${b*2 + h*2} ');
}