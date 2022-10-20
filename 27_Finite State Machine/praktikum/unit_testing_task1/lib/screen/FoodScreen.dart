import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'FoodViewModel.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) { 
      Provider.of<FoodViewModel>(context, listen: false).getAllFoods();
    });
  }
  
  @override
  Widget build(BuildContext context) {
    final modelView = Provider.of<FoodViewModel>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter MVVM Food'),
      ),
      body: ListView.builder(
        itemCount: modelView.foods.length,
        itemBuilder: (context, index) {
          final food = modelView.foods[index];
          return ListTile(
            leading: const Icon(Icons.fastfood),
            title: Text(food.name),
          );
        },
      ),
    );
  }
}