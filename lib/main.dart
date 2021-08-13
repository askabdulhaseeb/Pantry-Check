import 'package:flutter/material.dart';
import 'package:pantrycheck/screens/pages/expiring_page/expiring_page.dart';
import 'package:pantrycheck/screens/pages/inventory_page/intentory_page.dart';
import 'package:pantrycheck/screens/pages/shopping_page/shopping_page.dart';
import 'package:pantrycheck/screens/pages/timeline_page/timeline_page.dart';
import 'package:pantrycheck/screens/selectable_navigation_screen/selectable_navigation_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SelectableNavigationScreen(),
      routes: {
        SelectableNavigationScreen.routeName: (_) =>
            SelectableNavigationScreen(),
        //Pages
        InventoryPage.routeName: (_) => const InventoryPage(),
        ShoppingPage.routeName: (_) => const ShoppingPage(),
        ExpiringPage.routeName: (_) => const ExpiringPage(),
        TimelinePage.routeName: (_) => const TimelinePage(),
      },
    );
  }
}
