import 'package:flutter/material.dart';

class ExpiringPage extends StatelessWidget {
  static const String routeName = '/ExpiringPage';
  const ExpiringPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Expiring Page'),
      ),
    );
  }
}
