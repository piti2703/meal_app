import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:meals__app/data/dummy_data.dart';
import 'package:meals__app/widgets/category_grid_item.dart';
import 'package:meals__app/screens/meals.dart';
import 'package:meals__app/models/category.dart';
import 'package:http/http.dart' as http;
import 'package:meals__app/models/meal.dart';

class CategoriesScreen extends StatefulWidget {
  const CategoriesScreen({super.key});

  @override
  State<CategoriesScreen> createState() => _CategoriesScreenState();
}

List<Meal> loadedItems = [];

class _CategoriesScreenState extends State<CategoriesScreen> {
  @override
  void initState() {
    super.initState();
    _loadItems();
  }
  // @override
  void _loadItems() async {
    loadedItems = [];
    final url = Uri.https(
        'flutter-meals-2b4c2-default-rtdb.firebaseio.com', 'meals.json');

    final response = await http.get(url);
    final Map<String, dynamic> listData =
        json.decode(response.body);

        
    for (final item in listData.entries) {

      List<String> ingredients = [];
      List<String> categories = [];
      List<String> steps = [];

      for (var i = 1; i <= item.value['ingredients'].length; i++) {
        ingredients.add(item.value['ingredients']['ingredient$i']); 
      }
      for (var i = 1; i <= item.value['categories'].length; i++) {
        categories.add(item.value['categories']['category$i']); 
      }
      for (var i = 1; i <= item.value['steps'].length; i++) {
        steps.add(item.value['steps']['step$i']); 
      }

      loadedItems.add(Meal(
        id: item.key,
        categories: categories,
        title: item.value['title'],
        imageUrl: item.value['imageUrl'],
        ingredients: ingredients,
        steps: steps,
      ));
    }


 
  }

  void _selectCategory(BuildContext context, Category category) async {
    final filteredMeals = loadedItems
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

    _loadItems();
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
