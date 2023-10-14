import 'package:dio_calculadora_imc_flutter/repositories/history_repository.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:timezone/data/latest.dart' as tz;

import 'dio_calculadora_imc_flutter.dart';

void main() {
  tz.initializeTimeZones();
  runApp(
    ChangeNotifierProvider(
      create: (context) => HistoryRepository(),
      child: const DioCalculadoraIMCFlutter(),
    ),
  );
}
