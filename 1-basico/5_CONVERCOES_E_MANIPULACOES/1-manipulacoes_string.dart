void main(List<String> args) {
  String nome = 'Igor Barreto';

  //substring
  print(nome.substring(5));
  String sexo = 'Masculino';
  print(sexo.substring(0, 1));

  //startWith => retorna true ou false
  print(sexo.startsWith('M'));

  //contains => retorna true ou false
  print(sexo.contains('Masc'));

  //toLowerCase -> MascULINO => masculino
  print(sexo.toLowerCase().contains('masc'));

  //toUperCase -> MascULINO => MASCULINO
  print(sexo.toUpperCase().contains('MASC'));

  // Concatenação
  print('nome: ' + nome + ' sexo: ' + sexo);
  print('nome: ${nome.toLowerCase()} sexo $sexo');
}
