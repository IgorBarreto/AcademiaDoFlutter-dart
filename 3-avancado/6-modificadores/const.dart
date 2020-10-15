List<int> getValores() => [1, 2];
List<int> getValores2() => const [1, 2];

class Pessoa {
  final String nome;
  final int idade;
  const Pessoa(this.nome, this.idade);
}

void main(List<String> args) {
  //* Um atributo const precisa ser inicializado
  const nome = 'Igor';
  print(nome);
  var a = getValores();
  var b = getValores();
  var c = getValores2();
  var d = getValores2();

  Pessoa p1 = const Pessoa('Igor', 27);
  Pessoa p2 = const Pessoa('Igor', 27);
  Pessoa p3 = const Pessoa('Igor', 28);
  Pessoa p4 = const Pessoa('Igor', 28);

  print(a == b);
  print(c == d);
  print('p1 == p2 ${p1 == p2}');
  print('p2 == p3 ${p2 == p3}');
  print('p3 == p4 ${p3 == p4}');
}
