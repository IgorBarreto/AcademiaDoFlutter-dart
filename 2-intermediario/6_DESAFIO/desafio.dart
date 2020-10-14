void main(List<String> args) {
  var pessoas = [
    'Rodrigo Rahman|35|Masculino',
    'Jose|56|Masculino',
    'Joaquim|84|Masculino',
    'Rodrigo Rahman|35|Masculino',
    'Maria|88|Feminino',
    'Helena|24|Feminino',
    'Leonardo|5|Masculino',
    'Laura Maria|29|Feminino',
    'Joaquim|72|Masculino',
    'Helena|24|Feminino',
    'Guilherme|15|Masculino',
    'Manuela|85|Masculino',
    'Leonardo|5|Masculino',
    'Helena|24|Feminino',
    'Laura|29|Feminino',
  ];
  // Baseado na lista acima.
  // 1 - Remover os duplicados
  Set<String> pessoasSemDuplicar = Set();

  for (var pessoa in pessoas) {
    pessoasSemDuplicar.add(pessoa);
  }
  // for (var pessoa in pessoasSemDuplicar.toList()) {
  //   print(pessoa);
  // }

  // 2 - Me mostre a quantidade de pessoas do sexo Masculino e Feminino
  Map<String, int> quantidadePessoasPorSexo = Map();
  int masc = 0;
  int fem = 0;
  for (var pessoa in pessoasSemDuplicar.toList()) {
    String sexo = pessoa.split('|')[2];

    if (sexo.contains('M')) {
      masc++;
    } else {
      fem++;
    }
  }
  quantidadePessoasPorSexo['Feminino'] = fem;
  quantidadePessoasPorSexo['Maculino'] = masc;
  print(quantidadePessoasPorSexo);
  // 3 - Filtrar e deixar a lista somente com pessoas maiores de 18 anos
  //     e mostre a quantidade de pessoas com mais de 18 anos
  List<String> pessoasLista = pessoasSemDuplicar.toList();
  var novaLista =
      pessoasLista.where((element) => int.parse(element.split('|')[1]) > 18);
  for (var lista in novaLista) {
    print(lista.split('|')[0]);
  }
  print('O número de pessoas maiores de 18 Anos é : ${novaLista.length}');

  // 4 - Encontre a pessoa mais velha.
  String pessoaMaisVelha = pessoasSemDuplicar.first;
  //print(pessoaMaisVelha);
  for (var pessoa in pessoasSemDuplicar.toList()) {
    if (int.parse(pessoaMaisVelha.split('|')[1]) <=
        int.parse(pessoa.split('|')[1])) {
      pessoaMaisVelha = pessoa;
    }
  }
  print('A pessoa mais velha é ${pessoaMaisVelha.split('|')[0]}');
}
