void main(List<String> args) {
  //* sets permitem valores nulos
  //* lista desordenada
  //* Não aceita valores duplicados
  Set<int> numeros = Set();
  numeros.add(1);
  numeros.add(3);
  numeros.add(5);
  numeros.add(2);
  numeros.add(0);
  numeros.add(-1);
  numeros.add(-1);
  numeros.add(-1);
  numeros.add(-1);
  print(numeros);
}
