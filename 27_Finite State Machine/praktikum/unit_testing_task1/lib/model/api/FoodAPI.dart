import 'dart:math';

import 'package:dio/dio.dart';

import '../FoodModel.dart';

class FoodAPI {
  static Future<List<Food>> getFoods() async {
    final response = await Dio().get('https://my-json-server.typicode.com/hadihammurabi/flutter-webservice/foods');

    List<Food> foods = (response.data as List).map((e) => Food(id: e['id'], name: e['name'])).toList();

    return foods;

  }
}