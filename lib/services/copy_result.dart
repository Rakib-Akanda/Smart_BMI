import 'package:bmi_calculator/utils/snackbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void copyResult(
  BuildContext context,
  TextEditingController nameController,
  double bmi,
  String category,
  String idealWeight,
  String advice,
) {
  String result =
      '''
Name: ${nameController.text.isEmpty ? "Guest" : nameController.text}

BMI: ${bmi.toStringAsFixed(2)}

Category: $category

Ideal Weight: $idealWeight

Health Advice:
$advice
''';

  Clipboard.setData(ClipboardData(text: result));

  showMessage(
    context,
    "Result copied successfully!",
    backgroundColor: Colors.green.shade600,
    icon: Icons.check_circle_outline,
  );
}
