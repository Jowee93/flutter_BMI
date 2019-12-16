import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({this.weight, this.height});

  final int weight;
  final int height;

  double bmiScore;
  String bmiResult;
  String bmiText;

  double getBmiScore() {
    bmiScore = weight / pow(height / 100, 2);

    return bmiScore;
  }

  String getBmiResult() {
    if (bmiScore > 30) {
      bmiResult = 'Obese';
    } else if (bmiScore >= 25) {
      bmiResult = 'Overweight';
    } else if (bmiScore >= 18.5) {
      bmiResult = 'Normal';
    } else {
      bmiResult = 'Underweight';
    }
    return bmiResult;
  }

  String getBmiText() {
    if (bmiScore > 30) {
      bmiText = 'You are obese, time to lose weight !';
    } else if (bmiScore >= 25) {
      bmiText = 'You are overweight, cut down on junk food !';
    } else if (bmiScore >= 18.5) {
      bmiText = 'You are pretty normal, live as you may !';
    } else {
      bmiText = 'Eat a little more, you skinny bastard !';
    }
    return bmiText;
  }
}
