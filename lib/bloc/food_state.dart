part of 'food_bloc.dart';

@immutable
abstract class FoodState {
  List<Food> foodList;

  FoodState();
}

class FoodInitial extends FoodState {
  FoodInitial() {
    this.foodList = List<Food>();
  }
}

class FoodUpdated extends FoodState {
  FoodUpdated(List<Food> l) {
    this.foodList = l;
  }
}
