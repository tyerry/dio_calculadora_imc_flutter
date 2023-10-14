import 'package:flutter/material.dart';

class HistoryRepository extends ChangeNotifier {
  List<ListTile> _history = [];

  List<ListTile> get history => _history;

  addHistory(ListTile history) {
    _history.add(history);
    notifyListeners();
  }

  removeHistory(ListTile element) {
    _history.remove(element);
    notifyListeners();
  }

  cleanHistory() {
    _history = [];
  }
}
