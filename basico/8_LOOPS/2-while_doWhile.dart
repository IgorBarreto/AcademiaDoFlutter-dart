void main(List<String> args) {
  int numero = 0;
  while (numero < 10) {
    numero++;
    print(numero);
  }
  numero = 0;

  do {
    print(numero);
    numero++;
  } while (numero < 10);
}
