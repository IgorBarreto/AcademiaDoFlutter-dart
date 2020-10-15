import 'pessoa.dart';

extension SaudacaoString on String {
  String saudacao() {
    return 'Olá $this seja bem vindo ao dart';
  }
}

extension PessoaSaudacao on Pessoa {
  String saudacao() {
    return 'Olá ${this.nome} seja bem vindo ao dart';
  }
}
