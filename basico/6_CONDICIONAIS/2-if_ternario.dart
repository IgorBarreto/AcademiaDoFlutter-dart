void main(List<String> args) {
  var idade = 17;

  if (idade < 18) {
    print('menor de idade');
  } else {
    print('maior de idade');
  }
  print('${idade >= 18 ? 'maior' : 'menor'}');
}
