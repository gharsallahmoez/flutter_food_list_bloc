import 'package:flutter/material.dart';
import 'package:flutter_food_list_bloc/screens/food_form.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food List',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: FoodForm(),
    );
  }
}
