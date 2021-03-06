import 'dart:math';
import 'package:flutter/material.dart';

class CalculatorBrain {
  CalculatorBrain({required this.height, required this.weight});

  final int height;
  final int weight;

  Color color = Colors.green;

  double _bmi = 0;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      color = Colors.orange;
      return 'Overweight';
    } else if (_bmi > 18.5) {
      color = Colors.green;
      return 'Normal';
    } else {
      color = Colors.orange;
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'Your weight is more than the average weights. Do more training stuff in order to be healthy';
    } else if (_bmi > 18.5) {
      return 'Your body weight is in normal state. You are doing great job';
    } else {
      return 'You have a weight less than average one. Eat more to feel yourself good';
    }
  }

  Color getColor(){
    return color;
  }
}
