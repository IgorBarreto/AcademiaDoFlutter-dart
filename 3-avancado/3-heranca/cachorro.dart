import 'animal.dart';

class Cachorro extends Animal {
  String nome;

  @override
  int calcularIdadeHumana() {
    return idade * 7;
  }
}
