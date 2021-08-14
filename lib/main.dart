import 'package:flutter/material.dart';
import 'screens/pages/recipes_page/recipes_page.dart';
import 'screens/pages/shopping_page/shopping_page.dart';
import 'screens/selectable_navigation_screen/selectable_navigation_screen.dart';
import 'screens/pages/food_page/food_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.amber[900],
        primarySwatch: Colors.deepOrange,
      ),
      home: SelectableNavigationScreen(),
      routes: {
        SelectableNavigationScreen.routeName: (_) =>
            SelectableNavigationScreen(),
        //Pages
        FoodPage.routeName: (_) => const FoodPage(),
        ShoppingPage.routeName: (_) => const ShoppingPage(),
        RecipesPage.routeName: (_) => const RecipesPage(),
      },
    );
  }
}
