void main(List<String> args) {
  try {
    // String nome = null;
    // nome.toLowerCase();

    int.parse('Igor');
  } on FormatException catch (e, s) {
    print('Exception Generica $e');
    print('Stack FormatException $s');
  } catch (e, s) {
    print('Exception Generica $e');
    print('Stack Generica $s');
  } finally {
    print('sempre executado');
  }
}
