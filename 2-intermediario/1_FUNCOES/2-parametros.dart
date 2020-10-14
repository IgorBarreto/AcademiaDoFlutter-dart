void main(List<String> args) {
  int n1 = 10, n2 = 20;
  print('A soma de $n1 e $n2 é ${somaNomeada(num1: n1, num2: n2)}');
  print('A soma de $n1 com num2 defaul é ${somaDefault(
    num1: n1,
  )}');

  imprimir('igor');
}

//parametros nomeados
int somaNomeada({num1, num2}) {
  return num1 + num2;
}

//parametros default
int somaDefault({num1, num2 = 1}) {
  return num1 + num2;
}

//parametros opcionais
void imprimir(String nome, [int idade]) {
  print(
      'O nome do paciente é $nome ${idade != null ? 'e tem $idade anos' : ''}');
}
