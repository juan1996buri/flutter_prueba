import 'package:flutter/material.dart';

class HomeProvider extends ChangeNotifier {
  int selectedIndex = 0;
  changeSelectedIndex({required currentIndex}) {
    selectedIndex = currentIndex;
    notifyListeners();
  }
}
