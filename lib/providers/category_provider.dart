import 'package:flutter/foundation.dart';
import 'package:flutter_quiz_app/data/category_list.dart';
import 'package:flutter_quiz_app/model/category.dart';

class CategoryProvider extends ChangeNotifier {
  int _currentCategoryIndex = 0;
  int get currentCategoryIndex => _currentCategoryIndex;

  CategoryClass get currentCategory => categoryList[_currentCategoryIndex];

  void isCategory(int index) {
    _currentCategoryIndex == index;
    _currentCategoryIndex++;

    notifyListeners();
  }
}
