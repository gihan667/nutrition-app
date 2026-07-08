import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

AppBar buildAppBar(BuildContext context, {required String title, required List<Widget> actions, required Widget leading}) {
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
    systemOverlayStyle: SystemUiOverlayStyle.light,
  );
}