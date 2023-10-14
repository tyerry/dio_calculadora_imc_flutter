import 'package:dio_calculadora_imc_flutter/repositories/history_repository.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HistoryPage extends StatefulWidget {
  const HistoryPage({super.key});

  @override
  State<HistoryPage> createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
  late HistoryRepository historyRepository;

  @override
  Widget build(BuildContext context) {
    historyRepository = Provider.of<HistoryRepository>(context);
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: const Text('Histórico'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: historyRepository.history.length,
              itemBuilder: (BuildContext context, int index) {
                return historyRepository.history.reversed.toList()[index];
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              onPressed: () {
                historyRepository.cleanHistory();
                setState(() {});
              },
              mini: true,
              elevation: 8,
              child: const Icon(Icons.cleaning_services_outlined),
            ),
          )
        ],
      ),
    ));
  }
}
