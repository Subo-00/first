import 'input_page.dart';

class CalculatorBrain {
  CalculatorBrain({
    required this.gender,
    required this.age,
    required this.height,
    required this.weight,
  });
  final int age;
  final Gender? gender;
  final int weight;
  final int height;

  late double _bmi;

  String calculateBMI() {
    _bmi = weight / (height / 100 * height / 100);
    return _bmi.toStringAsFixed(1);
  }

  String getInterpretation() {
    if (_bmi < 17) {
      return 'You have less then ideal weight, eat more.';
    } else if (_bmi < 25) {
      return 'You have an ideal weight. Great!';
    } else {
      return 'You are overweight, better eat less.';
    }
  }

  String bodyState() {
    if (_bmi < 17) {
      return 'UNDERWEIGHT';
    } else if (_bmi < 25) {
      return 'NORMAL';
    } else {
      return 'OVERWEIGHT';
    }
  }
}
