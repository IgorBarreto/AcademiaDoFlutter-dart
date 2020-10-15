import 'dart:async';

void run() {
  print('Stream teste');

  var streamController = StreamController();

  var portaDeEntrada = streamController.sink;
  var portaDeSaida = streamController.stream;
  portaDeSaida.listen((valor) {
    print(valor);
  });
  portaDeEntrada.add('Bolinha 1');
  portaDeEntrada.add('Bolinha 2');
  portaDeEntrada.add('Bolinha 3');
  portaDeEntrada.add('Bolinha 4');
  portaDeEntrada.add('Bolinha 5');
  portaDeEntrada.add('Bolinha 6');
}
