import 'package:flutter/material.dart';
import 'constants.dart';
import 'calculator_brain.dart';
import 'result_page.dart';

class BottomContainer extends StatelessWidget {
  final String text;
  final int height;
  final int weight;

  BottomContainer({this.text, this.height, this.weight});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        CalculatorBrain calc = CalculatorBrain(height: height, weight: weight);

        double _bmiScore = calc.getBmiScore();
        String _bmiResult = calc.getBmiResult();
        String _bmiText = calc.getBmiText();

        print(_bmiResult);
        print(_bmiScore);
        print(_bmiText);

        Navigator.pushNamed(
          context,
          '/result',
          arguments: ResultPage(
            bmiResult: _bmiResult,
            bmiScore: _bmiScore,
            bmiText: _bmiText,
          ),
        );
      },
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
