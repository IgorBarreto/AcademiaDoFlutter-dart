import 'dart:collection';

void main(List<String> args) {
  Set<int> numeros = {5, 1, 2, 3};
  print(numeros);
  HashSet<int> numerosHash = HashSet();
  numerosHash.add(5);
  numerosHash.add(1);
  numerosHash.add(2);
  numerosHash.add(3);
  print(numerosHash);
}
