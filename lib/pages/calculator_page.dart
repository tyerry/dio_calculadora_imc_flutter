import 'package:dio_calculadora_imc_flutter/shared/imc.dart';
import 'package:dio_calculadora_imc_flutter/shared/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class CalculatorPage extends StatefulWidget {
  const CalculatorPage({super.key});

  @override
  State<CalculatorPage> createState() => _CalculatorPageState();
}

class _CalculatorPageState extends State<CalculatorPage> {
  TextEditingController nomeController = TextEditingController();
  TextEditingController pesoController = TextEditingController();
  TextEditingController alturaController = TextEditingController();

  String get nome => nomeController.text.trim();
  double? get peso => double.tryParse(pesoController.text.replaceAll(',', '.'));
  double? get altura =>
      double.tryParse(alturaController.text.replaceAll(',', '.'));
  String? resultado;

  bool isCardVisible = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFF1B1C35),
        appBar: AppBar(title: const Text('Vamos lá!')),
        body: Column(
          children: [
            const Spacer(
              flex: 1,
            ),
            Expanded(
              flex: 3,
              child: Container(
                width: double.infinity,
                height: 60,
                margin: const EdgeInsets.symmetric(horizontal: 40),
                child: CustomTextField(
                  label: 'Seu nome',
                  hint: 'Digite apenas letras',
                  controller: nomeController,
                  textType: TextInputType.name,
                ),
              ),
            ),
            const Spacer(
              flex: 1,
            ),
            Expanded(
              flex: 3,
              child: Container(
                width: double.infinity,
                height: 60,
                margin: const EdgeInsets.symmetric(horizontal: 40),
                child: CustomTextField(
                  label: 'Seu peso (Kg)',
                  hint: 'Digite apenas números',
                  controller: pesoController,
                  textType: TextInputType.number,
                ),
              ),
            ),
            const Spacer(
              flex: 1,
            ),
            Expanded(
              flex: 3,
              child: Container(
                width: double.infinity,
                height: 60,
                margin: const EdgeInsets.symmetric(horizontal: 40),
                child: CustomTextField(
                  label: 'Sua altura (m)',
                  hint: 'Digite apenas números',
                  controller: alturaController,
                  textType: TextInputType.number,
                ),
              ),
            ),
            const Spacer(
              flex: 1,
            ),
            SizedBox(
              width: 150,
              height: 60,
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    FocusScope.of(context).unfocus();
                    Imc imc = Imc(nome, peso ?? 0, altura ?? 0);
                    resultado = imc.resultado;
                    isCardVisible = !isCardVisible;
                  });
                },
                style: ButtonStyle(
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                child: const Text(
                  'CALCULAR',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF66ED6C)),
                ),
              ),
            ),
            const Spacer(
              flex: 1,
            ),
            if (isCardVisible)
              Card(
                margin: const EdgeInsets.all(40),
                elevation: 3,
                child: Container(
                  padding: const EdgeInsets.all(10),
                  child: Text(
                    resultado ?? '',
                    style: const TextStyle(fontSize: 16),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            const Spacer(
              flex: 1,
            ),
          ],
        ),
      ),
    );
  }
}
