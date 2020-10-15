//* mixin é um classe abstrata
import 'joao.dart';

void main(List<String> args) {
  Joao joao = new Joao();
  joao
    ..cantar()
    ..dancar();
  Joao joao2 = Joao();
  joao2.cantar();
  joao2.dancar();
}
