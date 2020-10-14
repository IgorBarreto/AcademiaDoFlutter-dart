void main(List<String> args) {
  var numeros = List.generate(10, (index) => index);

  for (var i = 0; i < numeros.length; i++) {
    print(i);
  }
  for (var valor in numeros) {
    print(valor);
  }
}
