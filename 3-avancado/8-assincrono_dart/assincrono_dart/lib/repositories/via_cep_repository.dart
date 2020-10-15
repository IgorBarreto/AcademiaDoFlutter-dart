import 'package:assincrono_dart/models/cidades_models.dart';
import 'package:dio/dio.dart';

class ViaCepRepository {
  Future<CidadeModel> buscarEndereco() async {
    String url = 'https://viacep.com.br/ws/01001000/json/';
    var dio = Dio();
    var response = await dio.get(url);
    if (response.statusCode == 200) {
      var respData = response.data;
      if (respData['error'] != null) {
        print('Erro ao buscar endereco');
        return null;
      } else {
        var cidade = CidadeModel(
          cep: respData['cep'],
          logradouro: respData['logradouro'],
          complemento: respData['complemento'],
          bairro: respData['bairro'],
          localidade: respData['localidade'],
          gia: respData['gia'],
          ibge: respData['ibge'],
          uf: respData['uf'],
          unidade: respData['unidade'],
        );
        return cidade;
      }
    }
  }
}
