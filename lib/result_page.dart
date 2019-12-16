import 'package:flutter/material.dart';
import 'reusable_card_custom_widget.dart';
import 'constants.dart';
import 'bottom_container.dart';

class ResultPage extends StatefulWidget {
  ResultPage({this.bmiScore, this.bmiResult, this.bmiText});

  final double bmiScore;
  final String bmiResult;
  final String bmiText;

  @override
  _ResultPageState createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  @override
  Widget build(BuildContext context) {
    final ResultPage args = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      appBar: AppBar(
        title: Text('Your Result'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: reusableCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    args.bmiResult,
                    style: kResultTextStyle,
                  ),
                  Text(
                    args.bmiScore.toStringAsFixed(1),
                    style: kLargeResultStyle,
                  ),
                  Text(
                    args.bmiText,
                    textAlign: TextAlign.center,
                    style: kLargeResultTextStyle,
                  ),
                ],
              ),
            ),
          ),
          BottomContainer(
            text: 'RE-CALCULATE',
          ),
        ],
      ),
    );
  }
}
