void run() {
  print('inicio do p1');
  processo2();
  //* PEGANDO DADOS DE PROCESSOS FUTUROS
  processo3()
      .then((mensagem) => print('Mensagem recebida: $mensagem'))
      .whenComplete(() => print('p3 completo'));

//* TRATANDO ERROS DE PROCESSOS FUTUROS
  processo4()
      .then((mensagem) => print(mensagem), onError: (err) => print(err))
      .whenComplete(() => print('p4 com onError'));
  ;
  processo4()
      .then((mensagem) => print(mensagem))
      .catchError((err) => print(err))
      .whenComplete(() => print('p4 com catch error'));

  print('fim do p1');
}

void processo2() {
  print('inicio do p2');

  Future.delayed(Duration(seconds: 2), () {
    for (var i = 0; i < 5; i++) {
      print(i);
    }
    print('fim do p2');
  });
}

Future<String> processo3() {
  print('inicio do processo 4');
  return Future<String>.value(
      Future.delayed(Duration(seconds: 3), () => 'fim do processo 3'));
}

Future<String> processo4() {
  print('inicio do processo 4');
  return Future<String>.value(Future.delayed(Duration(seconds: 3),
      () => throw Exception('erro ao buscar processo 4')));
}
