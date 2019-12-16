import 'package:flutter/material.dart';
import 'constants.dart';


class BottomContainer extends StatelessWidget {
  final String text;
  final int height;
  final int weight;
  final Function method;

  BottomContainer({this.text, this.height, this.weight, this.method});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: method,
      child: Container(
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        color: bottomContainerColor,
        margin: EdgeInsets.only(top: 10.0),
        width: double.infinity,
        height: bottomContainerHeight,
      ),
    );
  }
}
