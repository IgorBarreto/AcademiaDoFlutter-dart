void main(List<String> args) {
  int dia = 6;

  switch (dia) {
    case 0:
    case 6:
      print('Tenha um bom final de semana');
      break;
    case 1:
      print('Segunda-feira');
      break;
    case 2:
      print('Teerça-feira');
      break;
    case 3:
      print('Quarta-feira');
      break;
    case 4:
      print('Quinta-feira');
      break;
    case 5:
      print('Sexta-feira');
      break;
    default:
      print('dia da semana inválido');
      break;
  }
}
