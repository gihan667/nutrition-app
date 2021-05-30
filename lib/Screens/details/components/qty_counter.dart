
import 'package:flutter/material.dart';

import '../../../constants.dart';

class QtyCounter extends StatelessWidget {
  const QtyCounter({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        QtyButton(
          tap: () {},
          text: '-',
        ),

        SizedBox(width: 10),

        Text(
          '1',
          style: TextStyle(
            fontSize: 18
          ),
        ),

        SizedBox(width: 10),

        QtyButton(
          tap: () {},
          text: '+',
        )
      ],
    );
  }
}

class QtyButton extends StatelessWidget {
  const QtyButton({
    Key key,
    @required this.tap,
    @required this.text,
  }) : super(key: key);

  final GestureTapCallback tap;
  final String text;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: tap,
      child: Container(
        width: 30.0,
        height: 30.0,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(kDefaultPadding * 0.5),
          color: Colors.white
        ),
        child: Text(
          text,
          style: TextStyle(
            color: kRedColor,
            fontSize: 18
          ),
        ),
      ),
    );
  }
}