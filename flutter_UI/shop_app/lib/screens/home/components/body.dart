import 'package:flutter/material.dart';
import 'package:shop_app/constants.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPanddin),
          child: Text(
            "Women", style: Theme.of(context).textTheme
            .headline5
            .copyWith(fontWeight: FontWeight.bold),
          ),
        )
      ],
    )
  }
}