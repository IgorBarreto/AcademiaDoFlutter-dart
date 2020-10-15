class Camiseta {
  //Atributos de uma classe
  // modificadores possiveis
  // - public
  // - private => '_' antes do atributo
  String _tamaaho = 'G';
  String _cor = 'Preto';
  String _marca = 'Nike';

  // Getter e Setters

  String get cor => _cor;
  void set cor(String cor) => _cor = cor;
  String get tamanho => _tamaaho;
  void set tamanho(String tamanho) => _tamaaho = tamanho;
  String get marca => _marca;
  void set marca(String marca) => _marca = marca;
}
