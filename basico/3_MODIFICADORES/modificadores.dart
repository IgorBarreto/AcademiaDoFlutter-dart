void main() {
  //* Aqui a variável pode ter o seu valor modificado
  String nome = "Igor";
  print(nome);
  nome = "Barreto";
  print(nome);

  //* apos a sua declaração não pode ser trocado valor desta variável
  final meuNome = "Igor";
  const sobrenome = "Barreto ";

  print(meuNome + sobrenome);
}
