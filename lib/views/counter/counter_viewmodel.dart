import 'package:flutter/material.dart';
import 'package:flutter_try/services/service_locator.dart';
import 'package:flutter_try/services/storage_service.dart';

class CounterViewModel extends ChangeNotifier {
  int _counter = 0;
  int get counter => _counter;

  StorageService _storageService = locator<StorageService>();

  Future loadData() async {
    _counter = await _storageService.getCounterValue();
    notifyListeners();
  }

  void increment() {
    _counter++;
    // _storageService.saveCounterValue(_counter);
    notifyListeners();
  }
}
