void main(List<String> args) {
  Map<String, String> pacientes = Map();
  pacientes.putIfAbsent('nome', () => 'Igor Barreto');
  pacientes.putIfAbsent('idade', () => '27');
  print(pacientes);
  pacientes.update('idade', (idade) => '30');
  pacientes.update('sexo', (sexo) => 'Masculino',
      ifAbsent: () => 'Masculino Adicionado');
  print(pacientes);
  pacientes.forEach((key, value) {
    print('$key => $value');
  });

  Map<String, String> mapa2 = {'nome': 'Igor'};
  Map<String, String> mapa3 = {'sexo': 'Masculino'};
  mapa3.addAll(mapa2);
  print(mapa3);
}
