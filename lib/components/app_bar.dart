import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants.dart';

AppBar buildAppBar(BuildContext context, {String title, List<Widget> actions, Widget leading}) {
  return AppBar(
    backgroundColor: Colors.transparent,
    elevation: 0,
    title: Text(
      title,
      style: TextStyle(
        fontWeight: FontWeight.w300
      ),
    ),
    centerTitle: true,
    leading: leading,
    actions: actions,
  );
}