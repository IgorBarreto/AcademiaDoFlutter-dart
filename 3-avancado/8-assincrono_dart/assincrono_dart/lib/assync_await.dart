Future<void> run() async {
  print('inicio p1');

  var msg = await processo3();
  print('Mensagem recebida: $msg');

  try {
    await processo4();
  } catch (e) {
    print('Erro ao executar $e');
  }
  print('fim p1');
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
