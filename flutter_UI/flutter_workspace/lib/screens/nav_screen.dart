import 'package:flutter/material.dart';
import 'package:flutter_workspace/screens/home.dart';
import 'package:flutter_workspace/widgets/custom_tab_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'galery.dart';

class NavScreen extends StatefulWidget {
  @override
  _NavScreenState createState() => _NavScreenState();
}

class _NavScreenState extends State<NavScreen> {
  final List<Widget> _screens = [
    HomePage(),
    Categories(),
    Scaffold(),
    Scaffold(),
  ];
  final List<IconData> _icons = const [
    Icons.home_filled,
    FontAwesomeIcons.listAlt,
    Icons.favorite,
    FontAwesomeIcons.user,
  ];
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _icons.length,
      child: Scaffold(
        body: _screens[_selectedIndex],
        bottomNavigationBar: Container(
          // padding: const EdgeInsets.only(bottom: 12.0),
          color: Colors.white,
          child: CustomTabBar(
            icons: _icons,
            selectedIndex: _selectedIndex,
            onTap: (index) => setState(() => _selectedIndex = index),
          ),
        ),
      ),
    );
  }
}
