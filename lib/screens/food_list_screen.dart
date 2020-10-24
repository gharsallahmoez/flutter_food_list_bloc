import 'package:flutter/material.dart';
import 'package:flutter_food_list_bloc/screens/food_list.dart';

class FoodListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Food List')),
      body: FoodList(),
    );
  }
}
