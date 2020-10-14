void main() {
  int idade = 31;
  if (idade == 30) {
    print('A idade é iguala a $idade');
  } else {
    print('A idade é diferente de 30 e sim $idade');
  }

  if (idade < 18) {
    print('Menor de idade');
  } else if (idade < 65) {
    print('adulto');
  } else {
    print('idoso');
  }
}
