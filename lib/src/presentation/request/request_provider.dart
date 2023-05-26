import 'package:flutter/material.dart';

class RequestProvider extends ChangeNotifier {
  bool isActive = true;

  changeCurrentValue({required bool currenState}) {
    isActive = currenState;
    notifyListeners();
  }
}
