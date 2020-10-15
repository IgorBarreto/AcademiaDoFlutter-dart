import 'pessoa.dart';
import 'saudacao_string.dart';

void main(List<String> args) {
  String nome = 'Igor';
  Pessoa p = Pessoa();
  p.nome = 'Carla';
  print(nome.saudacao());
  print(p.saudacao());
}
