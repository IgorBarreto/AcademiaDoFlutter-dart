import './file_2.dart' as fileSoma;

void main(List<String> args) {
  int v1 = 10;
  int v2 = 5;
  int resultado = soma(v1, v2);
  int resultado2 = fileSoma.soma(v1, v2);
  print('A soma de $v1 e $v2 é $resultado');
  print('A soma de $v1 e $v2 é $resultado2');
}

int soma(valor1, valor2) {
  return valor1 + valor2;
}
