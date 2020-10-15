import 'animal.dart';
import 'cachorro.dart';

void main(List<String> args) {
  Cachorro cachorro = Cachorro();

  cachorro.idade = 10;
  cachorro.tamanho = 'Grande';
  print(cachorro.calcularIdadeHumana());

  Animal animal = Animal();

  animal.idade = 10;
  print(animal.calcularIdadeHumana());
}
