class Pessoa {
  String nome;
  int idade;

  //! só pode ter um construtor padrão
  //construtor padrao
  // Pessoa(this.nome, this.idade);
  //Construtor nomeado
  // Pessoa.soComNome(this.nome);

  //construtor com parametros opcionais
  //Pessoa({this.nome, this.idade});

  //construtor com parametros obrigatorios(nome) e opcional(idade)
  // = -> valor default
  Pessoa(this.nome, [this.idade = 30]);
}
