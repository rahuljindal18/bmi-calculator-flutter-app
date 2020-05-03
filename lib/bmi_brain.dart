import 'dart:math';

class BMIBrain {
  final int weight;
  final int height;
  double _bmi;

  BMIBrain({this.weight, this.height});

  String getBmi() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'Try to exercise more.';
    } else if (_bmi > 18) {
      return 'You are good.';
    } else {
      return 'Try to eat more';
    }
  }

  String getResult() {
    if (_bmi >= 25.0) {
      return 'OverWeight';
    } else if (_bmi > 18.0) {
      return 'Normal';
    } else {
      return 'UnderWeight';
    }
  }
}
