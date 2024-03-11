import 'package:flutter/material.dart';

class HomeScreenController with ChangeNotifier {
  int count = 30;

  void add() {
    count++;
    print(count);
    notifyListeners();
  }

  void sub() {
    count--;
    notifyListeners();
  }
}
