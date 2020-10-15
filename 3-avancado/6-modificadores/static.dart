class Pessoa {
  //* cria um atributo de classe
  //* vai morrer só quando finalizar o programa
  //* BOAS PRÁTICAS quando usar o modificador static colo que final no atributo
  static final String nome = 'Joao';

  String retornaNome() {
    return 'Igor Barreto';
  }

  static int calculaIdade() {
    return 3;
  }
}

void main(List<String> args) {
  Pessoa p1 = Pessoa();
  Pessoa p2 = Pessoa();
  //print(p1.nome);
  print(p1.retornaNome());
  print(Pessoa.nome);
  print(p2.retornaNome());
}
