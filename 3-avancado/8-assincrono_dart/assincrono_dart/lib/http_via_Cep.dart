import 'package:http/http.dart' as https;
import 'dart:convert' as convert;

Future<void> run() async {
  String url = 'https://viacep.com.br/ws/01001000/json/';

  var response = await https.get(url);
  if (response.statusCode == 200) {
    var respData = convert.jsonDecode(response.body);
    print(respData['cep']);
  }
}
