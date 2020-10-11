import 'dart:io';

void main() {
  // Declaração de variáveis
  // Sempre deixar LowerComelCase
  //! Erro: Não declarar  variaveis desta maneira
  String NomeCompleto = "Igor Barreto";

  //* Correto
  String nomeCompleto = "Igor Barreto";

  // Nunca deixar o dart inferir o  tipo dynamic automaticamente
  // isso é custoso para o dart
  //! NAO FAZER
  var nomeDinamico;

  // * Correto
  dynamic nome;
  List<int> lista = List();
  lista[0] = 1;
  lista[1] = 2;
}
