import 'package:flutter/material.dart';

class RecipesPage extends StatelessWidget {
  static const String routeName = '/RecipesPage';
  const RecipesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Recipes Page'),
      ),
    );
  }
}
