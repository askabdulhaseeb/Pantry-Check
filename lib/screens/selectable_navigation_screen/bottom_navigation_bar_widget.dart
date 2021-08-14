import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomNavigationBarWidget extends StatefulWidget {
  const BottomNavigationBarWidget({
    required this.onTab,
  });
  final Function onTab;

  @override
  _BottomNavigationBarWidgetState createState() =>
      _BottomNavigationBarWidgetState();
}

class _BottomNavigationBarWidgetState extends State<BottomNavigationBarWidget> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    void _onItemTapped(int index) {
      widget.onTab(index);
      setState(() {
        _selectedIndex = index;
      });
    }

    return BottomNavigationBar(
      unselectedItemColor: Theme.of(context).iconTheme.color,
      selectedItemColor: Theme.of(context).primaryColor,
      showUnselectedLabels: true,
      onTap: (value) => _onItemTapped(value),
      currentIndex: _selectedIndex,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.tapas_outlined),
          label: 'Food',
        ),
        BottomNavigationBarItem(
          icon: Icon(CupertinoIcons.cart),
          label: 'Shopping',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.outdoor_grill_outlined),
          label: 'Recipes',
        ),
      ],
    );
  }
}
