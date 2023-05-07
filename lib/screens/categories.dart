import 'package:flutter/material.dart';
import 'package:meals__app/data/dummy_data.dart';
import 'package:meals__app/widgets/category_grid_item.dart';
import 'package:meals__app/screens/meals.dart';
import 'package:meals__app/models/category.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  void _selectCategory(BuildContext context, Category category) {
    final filteredMeals = dummyMeals
        .where((meal) => meal.categories.contains(category.id))
        .toList();

    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (ctx) => MealsScreen(
          title: category.title,
          meals: filteredMeals,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('KSIĄŻKA KUCHARSKA')),
      body: Container(
        padding: const EdgeInsets.only(top: 50),
        child: Column(
          children: [
            const Text(
              "Wybierz kategorie...",
              textAlign: TextAlign.left,
               style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
            ),
            Expanded(
              child: GridView(
                padding: const EdgeInsets.all(24),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 3 / 2,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20),
                children: [
                  for (final category in availableCategories)
                    CategoryGridItem(
                      category: category,
                      onSelectCategory: () {
                        _selectCategory(context, category);
                      },
                    )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
