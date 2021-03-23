import 'dart:math';
import 'package:flutter/material.dart';

class CalculateBrain {
  CalculateBrain({this.height, this.weight});
  final double height;
  final int weight;

  double _bmi;

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
      return 'You have a higher than normal body weight. Try to exercise more';
    } else if (_bmi > 18.5) {
      return 'You have a normal body weight. Good Job!';
    } else {
      return 'You have a lower than normal body weight. You can eat a bit more';
    }
  }

  //teste
  AssetImage getImage() {
    if (_bmi >= 25) {
      return AssetImage('images/girl.png');
    } else if (_bmi > 18.6) {
      return AssetImage('images/man.png');
    } else {
      return AssetImage('images/standing-frontal-man-silhouette.png');
    }
  }
}
