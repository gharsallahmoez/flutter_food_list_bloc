import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_food_list_bloc/bloc/food_bloc.dart';

class FoodList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(16),
        child: BlocConsumer<FoodBloc, FoodState>(
          // buildWhen: (previous, current) {
          //   return true;
          // },
          // listenWhen: (previous, current) {
          //   // we show snackBar only if item added, if it's the same we never rebuild
          //   if (previous.foodList.length < current.foodList.length) {
          //     return true;
          //   }
          //   return false;
          // },
          listener: (context, state) {
            Scaffold.of(context).showSnackBar(SnackBar(
              content: Text('Added'),
            ));
          },
          builder: (context, state) {
            return ListView.builder(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              padding: EdgeInsets.all(16),
              itemCount: state.foodList.length,
              itemBuilder: (context, index) {
                return Card(
                  child: ListTile(
                    title: Text(state.foodList[index].name),
                    onTap: () => BlocProvider.of<FoodBloc>(context).add(DeleteFood(index)),
                  ),
                );
              },
            );
          },
        ));
  }
}
