import 'package:test/test.dart';
import 'package:unit_testing_task1/model/FoodModel.dart';
import 'package:unit_testing_task1/model/api/FoodAPI.dart';
import 'package:mockito/mockito.dart';
import 'package:mockito/annotations.dart';

import 'food_api_test.mocks.dart';

@GenerateMocks([FoodAPI])
void main() {
  group('FoodAPI', () {
    FoodAPI foodAPI = MockFoodAPI();

    test('getAllFoods', () async {
      when(FoodAPI.getFoods()).thenAnswer((_) async => <Food>[
        Food(id: 1, name: 'Nasi Goreng'),
        Food(id: 2, name: 'Mie Goreng'),
        Food(id: 3, name: 'Soto'),
        Food(id: 4, name: 'Sate'),
        Food(id: 5, name: 'Bakso'),
      ]);
      final foods = await FoodAPI.getFoods();
      expect(foods.isNotEmpty, true);
    });
  }); 
}