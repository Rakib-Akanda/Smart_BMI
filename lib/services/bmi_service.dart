import 'package:bmi_calculator/models/bmi_result.dart';
import 'package:flutter/material.dart';

class BmiService {
  static BmiResult calculate(
    double heightInCm,
    double weight,
    double heightMeter,
  ) {
    double bmi = weight / (heightMeter * heightMeter);

    String category;
    Color resultColor;

    if (bmi < 18.5) {
      category = "Underweight";
      resultColor = Colors.orange;
    } else if (bmi < 25) {
      category = "Normal";
      resultColor = Colors.green;
    } else if (bmi < 30) {
      category = "Overweight";
      resultColor = Colors.deepOrange;
    } else {
      category = "Obese";
      resultColor = Colors.red;
    }

    return BmiResult(
      bmi: bmi,
      category: category,
      resultColor: resultColor,
    );
  }
}
