import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../constants.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70.0,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25)
      ),
      padding: EdgeInsets.symmetric(horizontal: kDefaultPadding * 1.5),
      margin: EdgeInsets.all(kDefaultPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          NavItem(
            tap: () {},
            icon: 'assets/icons/home.svg',
          ),

          NavItem(
            tap: () {},
            icon: 'assets/icons/chat.svg',
          ),

          NavItem(
            tap: () {},
            icon: 'assets/icons/buy.svg',
          ),

          NavItem(
            tap: () {},
            icon: 'assets/icons/profile.svg',
          ),
        ],
      ),
    );
  }
}

class NavItem extends StatelessWidget {
  const NavItem({
    Key key,
    @required this.tap,
    @required this.icon
  }) : super(key: key);

  final GestureTapCallback tap;
  final String icon;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: tap,
      child: SvgPicture.asset(icon),
    );
  }
}