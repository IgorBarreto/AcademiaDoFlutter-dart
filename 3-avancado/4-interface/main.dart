import 'carro.dart';
import 'gol.dart';
import 'uno.dart';

void main(List<String> args) {
  Uno uno = Uno();
  Carro uno2 = Uno();

  print(uno.calculaVelocidadeMaxima());
  print(uno.calcularNumeroRodas());

  //* Quando vc instancia através de uma classe abastraa
  //* vc só pode chamar metodos da classe abstrata
  //! ERRO
  //print(uno2.calcularNumeroRodas());
  print(uno2.calculaVelocidadeMaxima());

//! Erro => uno não é filho de Gol e sim de Carro
//!  Uno uno3 = new Gol();
  Gol gol = new Gol();
  mostraVelocidadeMaxima(uno);
  mostraVelocidadeMaxima(gol);
}

void mostraVelocidadeMaxima(Carro carro) {
  print(carro.portas);
  print(carro.calculaVelocidadeMaxima());
}
