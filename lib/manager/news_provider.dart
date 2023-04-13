import 'package:flutter/material.dart';



class NewsProvider with ChangeNotifier {
  int index = 0;
  void toggleSlides(int index) {
    this.index = index;
    notifyListeners();
  }

 
}
