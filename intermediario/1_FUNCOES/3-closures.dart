void main(List<String> args) {
  Function mensagem = (String msg) {
    print(msg);
  };
  mensagem('Igor Barreto');
}

Function soma(numero1) {
  return (int numero2) {
    return numero1 + numero2;
  };
}
