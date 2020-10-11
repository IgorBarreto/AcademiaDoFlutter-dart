void main(List<String> args) {
  // &&(e) ||(ou) !(not)

  //operador &&
  print((true && true));
  print((true && false));
  print((false && true));
  print((false && false));

  var idade = 30;
  var sexo = 'Masculino';
  if (idade == 30 && sexo == 'Masculino') {
    print('tem 30 anos e é homem');
  }
  //    false                    true
  if (idade == 29 && sexo == 'Masculino') {
    print('tem 29 anos e é homem');
  }

  // operador ||

  if (idade == 30 || sexo == 'Feminio') {
    print('idade = 30 ou é mulher');
  }

  // operador !(not)
  if (!(idade == 30 || sexo == 'Feminio')) {
    print('Não entrar aqui');
  }
}
