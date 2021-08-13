import 'package:flutter/material.dart';

class InventoryPage extends StatelessWidget {
  static const String routeName = '/InventoryPage';
  const InventoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Center(
        child: Text('Inventory Page'),
      ),
    );
  }
}
