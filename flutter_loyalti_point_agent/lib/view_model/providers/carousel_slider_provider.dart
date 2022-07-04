import 'package:flutter/cupertino.dart';

class CarouselProvider with ChangeNotifier {
  int _current = 0;

  get current => _current;
  
  List<String> images = [
    "assets/images/carousel1.png",
    "assets/images/carousel2.png",
    "assets/images/carousel1.png",
    "assets/images/carousel2.png",
    "assets/images/carousel1.png",
    "assets/images/carousel2.png",
    "assets/images/carousel1.png",
    "assets/images/carousel2.png",
  ];

  void getCurrent(int page) {
    _current = page;
    notifyListeners();
  }
}
