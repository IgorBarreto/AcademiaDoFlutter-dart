void main(List<String> args) {
  //!foreach
  var numeros = List.generate(10, (index) => index);
  numeros.forEach((element) => print(element));

  //!Expand
  List<List<int>> lista = [
    [1, 2],
    [3, 4]
  ];
  print(lista.expand((element) => element));

  //!map
  var listam = [1, 2, 3];

  var novaLista = listam.map((e) => '$e -> Igor Barreto').toList();
  print(novaLista);

  //!any

  List<int> listaBusca = [1, 2, 3];
  if (listaBusca.any((element) => element == 3)) {
    print('achou');
  } else {
    print('Não encontrou');
  }
  //! every
  if (listaBusca.every((element) => element % 2 == 0)) {
    print('todos sao divisiveis por 0');
  } else {
    print('Nem todos sao divisiveis por 0');
  }

  //! where

  print(listaBusca.where((element) => element != 2));

  //! fold
  var nums = List.generate(5, (index) => index);
  int somaValores = nums.fold(0, (atual, element) => atual + element);
  print(somaValores);

  //! sort
  List<int> listaOriginal = [52, 30, 100, 2, 10, 1, 11];
  print(listaOriginal);

  // listaOriginal.sort((n1, n2) {
  //   if (n1 < n2)
  //     return -1;
  //   else if (n1 == n2)
  //     return 0;
  //   else
  //     return 1;
  // });
  listaOriginal.sort((n1, n2) => n1.compareTo(n2));
  print(listaOriginal);
}
