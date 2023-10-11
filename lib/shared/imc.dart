class Imc {
  late String nome;
  late double peso;
  late double altura;
  late String resultado;

  Imc(String nome, double peso, double altura) {
    String resultadoCalculo = (peso / (altura * altura)).toStringAsFixed(2);
    double resultadoTabela = double.tryParse(resultadoCalculo) ?? 0.0;

    switch (resultadoTabela) {
      case < 16:
        resultado =
            'Atenção $nome! De acordo com a tabela de IMC, seu estado é considerado magreza grave!';
      case >= 16 && < 17:
        resultado =
            'Atenção $nome! De acordo com a tabela de IMC, seu estado é considerado magreza moderada!';
      case >= 17 && < 18.5:
        resultado =
            'Atenção $nome! De acordo com a tabela de IMC, seu estado é considerado magreza leve!';
      case >= 18.5 && < 25:
        resultado =
            'Atenção $nome! De acordo com a tabela de IMC, seu estado é considerado saudável!';
      case >= 25 && < 30:
        resultado =
            'Atenção $nome! De acordo com a tabela de IMC, seu estado é considerado sobrepeso!';
      case >= 30 && < 35:
        resultado =
            'Atenção $nome! De acordo com a tabela de IMC, seu estado é considerado obesidade grau 1!';
      case >= 35 && < 40:
        resultado =
            'Atenção $nome! De acordo com a tabela de IMC, seu estado é considerado obesidade grau 2 (severa)!';
      case >= 40:
        resultado =
            'Atenção $nome! De acordo com a tabela de IMC, seu estado é considerado obesidade grau 3 (mórbida)!';
      default:
        resultado = 'Resultado inconclusivo!';
    }
  }
}
