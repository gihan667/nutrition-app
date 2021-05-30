
import 'package:flutter/material.dart';
import 'package:nutrition_app/Models/Item.dart';

import '../../../constants.dart';

class Vitamins extends StatelessWidget {
  const Vitamins({
    Key key,
    @required this.item,
  }) : super(key: key);

  final Item item;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 35.0,
      child: ListView.builder(
        itemCount: item.vitamins.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(kDefaultPadding),
              color: Colors.white
            ),
            padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
            margin: EdgeInsets.only(right: kDefaultPadding),
            alignment: Alignment.center,
            child: Text(
              item.vitamins[index]
            ),
          );
        }
      ),
    );
  }
}