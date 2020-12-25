import 'package:flutter/material.dart';

import 'constant.dart';

class InitChild extends StatelessWidget {
  InitChild({this.icons, this.text});
  final IconData icons;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icons,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          text,
          style: lableTextStyle,
        ),
      ],
    );
  }
}
