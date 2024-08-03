import 'package:flutter/material.dart';

class ConfigController extends ChangeNotifier {
  init() {
    clearAllData();
  }

  static bool isScanner = false;
  clearAllData() {
    isScanner = false;
    notifyListeners();
  }

  void toggleSwitch(bool value) {
    isScanner = !isScanner;
  }
}
