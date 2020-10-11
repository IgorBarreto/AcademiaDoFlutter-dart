import 'dart:collection';

void main(List<String> args) {
  //valores unicos, ordenados  e não aceita nulos
  SplayTreeSet<int> numeros = SplayTreeSet();
  numeros.add(50);
  numeros.add(20);
  numeros.add(-1);
  numeros.add(100);
  numeros.add(-100);
  numeros.add(200);
  print(numeros);
}
