import 'package:flutter/material.dart';
import 'constants.dart';

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
          size: kIconSize,
        ),
        SizedBox(
          height: kEmptySizedBox,
        ),
        Text(
          text,
          style: kLabelTextStyle,
        ),
      ],
    );
  }
}
