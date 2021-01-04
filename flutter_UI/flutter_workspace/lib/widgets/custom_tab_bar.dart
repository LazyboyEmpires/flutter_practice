import 'package:flutter/material.dart';
import 'package:flutter_workspace/config/palette.dart';

class CustomTabBar extends StatelessWidget {
  final List<IconData> icons;
  final int selectedIndex;
  final Function(int) onTap;
  final bool isBottomIndicator;

  const CustomTabBar({
    Key key,
    @required this.icons,
    @required this.selectedIndex,
    @required this.onTap,
    this.isBottomIndicator = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      
      height: 55.0,
          child: TabBar(
        indicatorPadding: EdgeInsets.zero,
        tabs: icons
            .asMap()
            .map((i, e) => MapEntry(
                  i,
                  Tab(
                    icon: Icon(
                      e,
                      color: i == selectedIndex
                          ? Palette.workoutColor
                          : Colors.black45,
                      size: 20.0,
                    ),
                    child: Text('home',
                    style: TextStyle(color: Colors.black),),
                  ),
                ))
            .values
            .toList(),
        onTap: onTap,
        
      ),
    );
  }
}
