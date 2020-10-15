import 'dart:convert';
import 'dart:io';

void run() {
  var file = File('README.md');
  //Assincrono
  print('inicio assincrono');
  file.readAsString().then((value) => print(value));
  print('fim assincrono');
  //Sincrono
  print('inicio sincrono');
  var str = file.readAsStringSync();
  print(str);
  print('fim sincrono');

  //file.readAsLines();
  //file.readAsLinesSync();

  //leitura de todo um stream
  var stream = file.openRead();
  stream.transform(utf8.decoder).listen((event) {
    print(event);
  });

//leitura de um stream linha a linha
  var stream2 = file.openRead();
  stream
      .transform(utf8.decoder)
      .transform(
        LineSplitter(),
      )
      .listen((event) {
    print('LINHA $event');
  });
}
