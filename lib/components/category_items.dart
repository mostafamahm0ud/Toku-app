import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  Category(this.text, this.color ,this.onTap);
  String? text;
  Color? color;

  Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.centerLeft,
        padding: EdgeInsets.only(left: 19),
        height: 55,
        width: double.infinity,
        // color: Color(0xff8FBC8B),
        color: color,
        child: Text(
          text!,
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}
