import 'package:flutter/material.dart';
import 'package:pantrycheck/screens/pages/expiring_page/expiring_page.dart';
import 'package:pantrycheck/screens/pages/inventory_page/intentory_page.dart';
import 'package:pantrycheck/screens/pages/shopping_page/shopping_page.dart';
import 'package:pantrycheck/screens/pages/timeline_page/timeline_page.dart';
import 'bottom_navigation_bar_widget.dart';

class SelectableNavigationScreen extends StatefulWidget {
  static const String routeName = '/SelectableNavigationScreen';
  @override
  _SelectableNavigationScreenState createState() =>
      _SelectableNavigationScreenState();
}

class _SelectableNavigationScreenState
    extends State<SelectableNavigationScreen> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  static final List<Widget> _widgetOptions = <Widget>[
    const InventoryPage(),
    const ShoppingPage(),
    const ExpiringPage(),
    const TimelinePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: homeAppBar(context),
      bottomNavigationBar: BottomNavigationBarWidget(onTab: _onItemTapped),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
    );
  }
}
