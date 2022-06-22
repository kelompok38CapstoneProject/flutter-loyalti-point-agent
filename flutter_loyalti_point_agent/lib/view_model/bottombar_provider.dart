import 'package:flutter/material.dart';

class BottombarProvider extends ChangeNotifier {
  int _currentPage = 0;

  get currentPage => _currentPage;

  void selectedPage(int index) {
    _currentPage = index;
    notifyListeners();
  }
}
