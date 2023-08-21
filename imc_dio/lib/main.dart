import 'package:imc_dio/models/pessoa.dart';
import 'package:imc_dio/services/calculadora_service.dart';
import 'package:imc_dio/utils/console_utils.dart';

void execute() {
  print('Bem vindo a calculadora de IMC');

  String nome = ConsoleUtils.lerString(mensagem: 'Nome:');
  double peso = ConsoleUtils.lerDouble(mensagem: 'Peso (kg):');
  double altura = ConsoleUtils.lerDouble(mensagem: 'Altura (metros):');
  Pessoa pessoa = Pessoa(nome, peso, altura);

  CalculadoraService calculadora = CalculadoraService();
  calculadora.resultado(pessoa);
}
