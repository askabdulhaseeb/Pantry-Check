import 'package:flutter/material.dart';

class FoodPage extends StatelessWidget {
  static const String routeName = '/FoodPage';
  const FoodPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Food Page'),
      ),
    );
  }
}
