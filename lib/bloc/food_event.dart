part of 'food_bloc.dart';

@immutable
abstract class FoodEvent {
  Food food;
  int foodIndex;
  FoodEvent({this.food, this.foodIndex});
}

class AddFood extends FoodEvent {
  AddFood(Food f) {
    this.food = f;
  }
}

class DeleteFood extends FoodEvent {
  DeleteFood(int foodIndex) {
    this.foodIndex = foodIndex;
  }
}
