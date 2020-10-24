import 'package:bloc/bloc.dart';

class FoodBlocObserver extends BlocObserver {
  @override
  void onEvent(Bloc bloc, Object event) {
    print(event);
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    print(transition.currentState);
    print(transition.nextState);
  }

  @override
  void onError(Cubit cubit, Object error, StackTrace stackTrace) {
    print(error);
  }
}
