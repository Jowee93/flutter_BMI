import 'package:flutter/material.dart';

const iconSize = 80.0;
const emptySizedBox = 15.0;
const textFontSize = 18.0;
const textFontColor = Color(0xFF8D8E98);

class IconCardContent extends StatelessWidget {
  final IconData icon;
  final String text;

  IconCardContent({this.icon, this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: iconSize,
        ),
        SizedBox(
          height: emptySizedBox,
        ),
        Text(
          text,
          style: TextStyle(
            fontSize: textFontSize,
            color: textFontColor,
          ),
        ),
      ],
    );
  }
}
