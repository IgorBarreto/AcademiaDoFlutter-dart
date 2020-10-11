void main(List<String> args) {
  int idade = 30;

  // toString
  print(idade.toString());

  // isNegative
  print(idade.isNegative);

  double valorDouble = 10.2;

  // round
  print(valorDouble.round());

  // roundToDoble
  print(valorDouble.roundToDouble());

  String valorString = '30';

  // * Se não conseguir converter retorna null
  int valor = int.tryParse(valorString);
  print(valor);

  var precoCamiseta = 30.2;
  print(precoCamiseta);
  print(precoCamiseta.toStringAsFixed(2));
}
