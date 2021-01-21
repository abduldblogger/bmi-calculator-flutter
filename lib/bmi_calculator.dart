import 'dart:math';

class BmiCalculatorBrain {
  int height;
  int weight;
  double _bmi;

  BmiCalculatorBrain({this.height, this.weight});

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'You are fat! Try to exercise more';
    } else if (_bmi > 18.5) {
      return 'You have normal body weight! Good Job!';
    } else {
      return 'You are thin. You can try to eat a bit more!';
    }
  }
}
