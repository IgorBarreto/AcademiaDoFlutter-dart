void main(List<String> args) {
  List<int> numeros = [1, 2, 3, 4, 5, 6];

  // inserir valor ao final do arrya
  numeros.add(7);
  //inserir na posicao escolhida (inex, valor)
  numeros.insert(0, 0);

  // remover através do índice
  numeros.removeAt(5);
  // remover atravéd  de um valor
  numeros.remove(1);
  // remover um range
  numeros.removeRange(3, 5);
  // remover através de uma condicao
  numeros.removeWhere((element) => element % 2 == 0);
  print(numeros);

  // primeiro item do array
  print(numeros.first);
  // ultimo item do array
  print(numeros.last);

  // gerando um array através de um range;
  List<int> numerosAleatorios = List.generate(10, (index) => index + 1);
  print(numerosAleatorios);

  // recuperando o primeiro valor que atende a condicao
  print(numerosAleatorios.firstWhere((element) => element % 3 == 0));
  // recuperando o ultimo valor que atende a condicao
  print(numerosAleatorios.lastWhere((element) => element % 3 == 0));

  // reduce = fold
  int somaNumerosAleatorios = numerosAleatorios.fold(
      0, (previousValue, element) => previousValue += element);
  print(somaNumerosAleatorios);
}
