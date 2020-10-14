void main(List<String> args) {
  //ex_01();
  //ex_02();
  //ex_03();
  //ex_04();
  //ex_05();
  ex_06();
}

void ex_01() {
  // Exercício 1:
  //   * Crie uma variável com o nome Pedro de Alcântara Francisco Antônio João Carlos Xavier de Paula Miguel Rafael Joaquim José Gonzaga Pascoal Cipriano Serafim de Bragança e Bourbon
  //   * Imprima a quantidade de caracteres que tem nessa variável

  String nome =
      'Pedro de Alcântara Francisco Antônio João Carlos Xavier de Paula Miguel Rafael Joaquim José Gonzaga Pascoal Cipriano Serafim de Bragança';
  print('Exercicio 1');
  print(
      'A string tem ${nome.length} caracteres incluindo espaços\nE tem ${nome.replaceAll(' ', '').length} caracteres sem espaços');
  print('----');
}

void ex_02() {
  // Exercício 2:
  //   * Construa uma lista com 10 nomes.
  //   * Imprima na tela cada nome com a frase: Sejá bem vindo NOME

  List<String> nomes = [
    'Alexandre',
    'Eduardo',
    'Henrique',
    'Antônio',
    'Enzo',
    'Ian',
    'Augusto',
    'Erick',
    'Isaac',
    'Breno'
  ];
  print('Exercicio 2');
  nomes.forEach((element) {
    print('Seja Bem vindo $element');
  });
  print('----');
}

void ex_03() {
// Exercício 3:
//     Crie uma variável com o nome Pedro de Alcântara Francisco Antônio João Carlos Xavier de Paula Miguel Rafael Joaquim José Gonzaga Pascoal Cipriano Serafim de Bragança e Bourbon
//     Imprima a quantidade de nomes que essa variavel tem.

  String nome =
      'Pedro de Alcântara Francisco Antônio João Carlos Xavier de Paula Miguel Rafael Joaquim José Gonzaga Pascoal Cipriano Serafim de Bragança';
  print('Exercicio 3');
  print('A string possui ${nome.split(' ').length} nomes');
  print('----');
}

void ex_04() {
  //   List paciente = [
  //     'Rodrigo Rahman|35',
  //     'Guilheme Rahman|10',
  //     'João Rahman|20',
  //     'Joaquin Rahman|25',
  //     'Luan Rahman|23'
  // ];

  // Dado a lista acima faça:
  // Imprima a lista acima na tela com o nome e a idade de cada paciente
  //ex: Rodrigo Rahman tem 35 anos
  List paciente = [
    'Rodrigo Rahman|35',
    'Guilheme Rahman|10',
    'João Rahman|20',
    'Joaquin Rahman|25',
    'Luan Rahman|23'
  ];

  print('Exercicio 4');
  paciente.forEach((element) {
    List<String> nomeEIdade = element.toString().split('|');
    print('${nomeEIdade[0]} tem ${nomeEIdade[1]} anos');
  });
  print('----');
}

void ex_05() {
  // List paciente = [
  //       'Rodrigo Rahman|35',
  //       'Guilheme Rahman|10',
  //       'João Rahman|20',
  //       'Joaquin Rahman|25',
  //       'Luan Rahman|23',
  //   ];

  // Dado a lista acima faça:
  //    Remova os 2 ultimo paciente da lista
  //    Imprima a lista acima na tela com o nome e a idade de cada paciente
  //    ex: Rodrigo Rahman tem 35 anos

  List paciente = [
    'Rodrigo Rahman|35',
    'Guilheme Rahman|10',
    'João Rahman|20',
    'Joaquin Rahman|25',
    'Luan Rahman|23',
  ];
  paciente.removeLast();
  paciente.removeLast();

  print('Exercicio 5');
  paciente.forEach((element) {
    List<String> nomeEIdade = element.toString().split('|');
    print('${nomeEIdade[0]} tem ${nomeEIdade[1]} anos');
  });
  print('----');
}

void ex_06() {
  // List paciente = [
  //       'Rodrigo Rahman|35',
  //       'Guilheme Rahman|10',
  //       'João Rahman|17',
  //       'Joaquin Rahman|28',
  //       'Luan Rahman|23',
  //   ];

  // Dado a lista acima faça:
  //     * Remova da lista os pacientes que são menor de idade.
  //     * Imprima a lista acima na tela com o nome e a idade de cada paciente
  //        ex:Rodrigo Rahman tem 35 anos

  List paciente = [
    'Rodrigo Rahman|35',
    'Guilheme Rahman|10',
    'João Rahman|17',
    'Joaquin Rahman|28',
    'Luan Rahman|23',
  ];
  List adultos = paciente
      .where((e) => int.parse(e.toString().split('|')[1]) > 18)
      .toList();

  print('Exercicio 6');
  adultos.forEach((element) {
    print(
        '${element.toString().split('|')[0]} tem ${element.toString().split('|')[1]} anos');
  });
  print('----');
}
