import 'package:flutter/foundation.dart';
import 'package:unit_testing_task1/model/api/FoodAPI.dart';

import '../model/FoodModel.dart';

class FoodViewModel with ChangeNotifier {
  List<Food> _foods = [];
  List<Food> get foods => _foods;

  getAllFoods() async {
    final f = await FoodAPI.getFoods();   
    _foods = f;
    notifyListeners();
  }
}