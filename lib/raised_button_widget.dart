import 'package:flutter/material.dart';

class RoundButton extends StatelessWidget {
  final IconData icon;
  final Function addMinus;

  RoundButton({this.icon, this.addMinus});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: addMinus,
      child: new Icon(
        icon,
        color: Colors.white,
        size: 30.0,
      ),
      shape: new CircleBorder(),
      elevation: 2.0,
      fillColor: Color(0xFF4D4C5F),
      padding: const EdgeInsets.all(15.0),
      constraints: BoxConstraints(minWidth: 70.0),
    );
  }
}
