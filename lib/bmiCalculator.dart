import 'dart:math';

class BmiCalculator {
  BmiCalculator({this.height, this.weight});

  final int height;
  final int weight;

  double _bmi;

  String calculateBmi() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi > 25) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (_bmi > 25) {
      return 'Try to exercise more often.';
    } else if (_bmi > 18.5) {
      return 'Good job! Keep it up.';
    } else {
      return 'Try to eat a bit more.';
    }
  }
}
