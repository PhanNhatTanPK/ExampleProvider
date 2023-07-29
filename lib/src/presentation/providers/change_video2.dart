import 'package:flutter/material.dart';

class ChangeVideo2 extends ChangeNotifier {
  String name = "";
  void changeValue(String newName) {
    name = newName;
    notifyListeners();
  }
}
