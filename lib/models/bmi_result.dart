import 'package:flutter/material.dart';

class BmiResult {
  final double bmi;
  final String category;
  final Color resultColor;
  final double? heightMeter;

  BmiResult({
    required this.bmi,
    required this.category,
    required this.resultColor,
    this.heightMeter,
  });
}
