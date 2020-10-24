import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter_food_list_bloc/model/food.dart';
import 'package:meta/meta.dart';

part 'food_event.dart';

part 'food_state.dart';

class FoodBloc extends Bloc<FoodEvent, FoodState> {
  FoodBloc() : super(FoodInitial());

  @override
  Stream<FoodState> mapEventToState(
    FoodEvent event,
  ) async* {
    if (event is AddFood) {
      List<Food> foods = state.foodList;
      if (event.food != null) {
        foods.add(event.food);
        FoodUpdated(foods);
      }
      yield FoodUpdated(foods);
    } else if (event is DeleteFood) {
      List<Food> foods = state.foodList;
      foods.removeAt(event.foodIndex);
      yield FoodUpdated(foods);
    }
  }
}
