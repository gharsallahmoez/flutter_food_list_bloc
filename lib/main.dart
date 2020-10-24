import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_food_list_bloc/bloc/food_bloc.dart';
import 'package:flutter_food_list_bloc/bloc/food_bloc_observer.dart';
import 'package:flutter_food_list_bloc/screens/food_form.dart';

void main() {
  Bloc.observer = FoodBlocObserver();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<FoodBloc>(
      create: (context) => FoodBloc(),
      child: MaterialApp(
        title: 'Food List',
        theme: ThemeData(
          primarySwatch: Colors.deepPurple,
        ),
        home: FoodForm(),
      ),
    );
  }
}
