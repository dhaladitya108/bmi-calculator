import 'dart:math';
import 'package:flutter/cupertino.dart';

class CalculatorBrain {
  CalculatorBrain({@required this.height, @required this.weight});
  final int height;
  final int weight;

  double _bmi;

  String calculateBMI() {
    print('$height $weight');
    _bmi = weight / pow((height / 100), 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi > 25)
      return 'overweight';
    else if (_bmi > 18.5)
      return 'normal';
    else
      return 'underweight';
  }

  String getInterception() {
    if (_bmi > 25)
      return 'Exercise Daily';
    else if (_bmi > 18.5)
      return 'It seems that you are a metahuman';
    else
      return 'you should not eat anything expect juck food';
  }
}
