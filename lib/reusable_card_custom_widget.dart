import 'package:flutter/material.dart';

const cardMargin = EdgeInsets.all(15.0);
const cardBorderRadius = 10.0;

class ReusableCard extends StatelessWidget {
  final Color colour;
  final Widget cardChild;
  final Function onPress;

  ReusableCard({@required this.colour, this.cardChild, this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        margin: cardMargin,
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(cardBorderRadius),
        ),
      ),
    );
  }
}
