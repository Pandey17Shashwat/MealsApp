import 'package:flutter/material.dart';
import './screens/categories_screen.dart';
import './screens/category_meals_screen.dart';
import './screens/meal_detail_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Daily Meals',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        accentColor: Colors.amber,
        canvasColor: const Color.fromRGBO(255, 254, 229, 1),
        fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
           bodyLarge: const TextStyle(color: Color.fromRGBO(20, 51, 51, 1)),
           bodyMedium: const TextStyle(color: Color.fromRGBO(20, 51, 51, 1)),
           titleLarge: const TextStyle(
              fontSize: 20,
              fontFamily: 'RobotoCondensed',
              fontWeight: FontWeight.bold,
           )
        ),
      ),
      home: const CategoriesScreen(),
      routes: {
          CategoryMealsScreen.routeName :(ctx) => CategoryMealsScreen(),
          MealDetailScreen.routeName : (ctx) => MealDetailScreen(),
      },
    );
  }
}

