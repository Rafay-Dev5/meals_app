import 'package:flutter/material.dart';
import '../widgets/meal_item.dart';

import '../models/meal.dart';

class FavouritesScreen extends StatelessWidget {
  final List<Meal> favouriteMeals;

  FavouritesScreen(this.favouriteMeals);

  @override
  Widget build(BuildContext context) {
    if (!favouriteMeals.isNotEmpty) {
      return SizedBox(
        child: const Text('You have no favourites - Start Adding Some'),
      );
    } else {
      return ListView.builder(
        itemBuilder: ((context, index) {
          return MealItem(
            id: favouriteMeals[index].id,
            title: favouriteMeals[index].title,
            imageUrl: favouriteMeals[index].imageUrl,
            affordability: favouriteMeals[index].affordability,
            complexity: favouriteMeals[index].complexity,
            duration: favouriteMeals[index].duration,
          );
        }),
        itemCount: favouriteMeals.length,
      );
    }
  }
}
