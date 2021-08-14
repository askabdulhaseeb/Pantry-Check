import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pantrycheck/screens/pages/food_page/food_page.dart';
import 'package:pantrycheck/screens/pages/recipes_page/recipes_page.dart';
import 'package:pantrycheck/screens/pages/shopping_page/shopping_page.dart';
import 'package:pantrycheck/screens/widgets/custom_appbar.dart';
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
    const FoodPage(),
    const ShoppingPage(),
    const RecipesPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppbar(
          context,
          (_selectedIndex == 0)
              ? 'Food'
              : (_selectedIndex == 1)
                  ? 'Shopping'
                  : 'Recipes'),
      bottomNavigationBar: BottomNavigationBarWidget(onTab: _onItemTapped),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(
          Icons.edit,
          color: Theme.of(context).scaffoldBackgroundColor,
        ),
      ),
    );
  }
}
