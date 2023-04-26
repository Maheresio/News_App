import 'package:flutter/material.dart';

import '../../../models/news_model.dart';

class BookMarkProvider with ChangeNotifier {
  List<NewsModel> bookMarkList = [];

  int findByTitle(NewsModel newsItem) {
    int index = -1;
    index =
        bookMarkList.indexWhere((element) => element.title == newsItem.title);

    return index;
  }

  void toggleBookMark(NewsModel newsItem) {
    _addAndRemovefromBookMarkList(newsItem);
    notifyListeners();
  }

  void _addAndRemovefromBookMarkList(NewsModel newsItem) {
    int index = findByTitle(newsItem);
    if (bookMarkList.isNotEmpty && index != -1) {
      removeFromBookMarkList(index);
    } else {
      addToBookMarkList(newsItem);
    }
    notifyListeners();
  }

  void removeFromBookMarkList(int index) {
    bookMarkList.removeAt(index);
    notifyListeners();
  }

  void addToBookMarkList(NewsModel newsItem) {
    bookMarkList.add(newsItem);
    notifyListeners();
  }
}
