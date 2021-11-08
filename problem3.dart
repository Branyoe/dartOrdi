import 'dart:io';
main() {
  int suma = 0;
  String entrada = '';
  List<int> vec = [];

  for (int i = 0; i < 10; i++) {
    print('Introduce le valor #${i}:');
    entrada = stdin.readLineSync().toString();
    vec.add(int.parse(entrada));
  }
  for (int i = 0; i < 10; i++) {
    suma += vec[i];
  }

  print('suma: ${suma}');
  print('promedio: ${suma/10}');
}