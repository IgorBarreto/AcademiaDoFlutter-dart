void main(List<String> args) {
  var pacientes = [
    'Rodrigo Rahman|35|desenvolvedor|SP',
    'Manoel Silva|12|estudante|MG',
    'Joaquim Rahman|18|estudante|SP',
    'Fernando Verne|35|estudante|MG',
    'Gustavo Silva|40|estudante|MG',
    'Sandra Silva|40|estudante|MG',
    'Regina Verne|35|estudante|MG',
    'João Rahman|55|Jornalista|SP',
  ];

  // Baseado no array acima monte um relatório onde mostre
  // Apresente a quantidade de pacientes com mais de 20 anos
  var pacientesMaiorQue20Anos = 0;
  for (var paciente in pacientes) {
    var pacienteArray = paciente.split('|');
    if (int.tryParse(pacienteArray[1]) > 20) {
      pacientesMaiorQue20Anos++;
    }
  }
  print('Possui $pacientesMaiorQue20Anos maiores que 20 anos');

  // Agrupar os pacientes por familia(considerar o sobrenome) apresentar por familia.
  List<String> familiaRahman = [];
  List<String> familiaSilva = [];
  List<String> familiaVerne = [];
  for (var paciente in pacientes) {
    List<String> atributosPaciente = paciente.split('|');
    String nome = atributosPaciente[0].split(' ')[0];
    String sobrenome = atributosPaciente[0].split(' ')[1];

    if (sobrenome == 'Verne') {
      familiaVerne.add(nome);
    } else if (sobrenome == 'Rahman') {
      familiaRahman.add(nome);
    } else {
      familiaSilva.add(nome);
    }
  }

  print('Familia Rahman');
  for (var i in familiaRahman) {
    print('\t $i');
  }
  print('\nFamilia Silva');
  for (var i in familiaSilva) {
    print('\t $i');
  }
  print('\nFamilia Verne');
  for (var i in familiaVerne) {
    print('\t $i');
  }
}
