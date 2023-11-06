import 'package:flutter/material.dart';


AppBar buildAppBar(
    {required String title,
  @required IconData? icon,
  required Color iconColor,
  required Color bgColor,
  required void Function() onTap})
{

  return AppBar(
    actions: [
      IconButton(
          onPressed: onTap,
          icon: Icon(
            icon ,
            color: iconColor,
          ))
    ],
    backgroundColor: bgColor,
    elevation: 0,
    centerTitle: true,
    title: Text(
      title,
      style: TextStyle(
        color: Colors.black,
      ),
    ),
  );
}