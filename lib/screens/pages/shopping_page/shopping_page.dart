import 'package:flutter/material.dart';

class ShoppingPage extends StatelessWidget {
  static const String routeName = '/ShoppingPage';
  const ShoppingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Shopping Page'),
      ),
    );
  }
}
