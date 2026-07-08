import 'package:flutter/material.dart';
import '../utils/snackbar.dart';

class ValidationService {
  // Height in cm Validation
  static double? validateHeightCm(
    BuildContext context,
    TextEditingController controller,
  ) {
    if (controller.text.isEmpty) {
      showMessage(
        context,
        "Please enter your height",
        backgroundColor: Colors.red.shade600,
        icon: Icons.warning_amber_rounded,
      );
      return null;
    }

    double? cm = double.tryParse(controller.text);

    if (cm == null) {
      showMessage(
        context,
        "Please enter valid height",
        backgroundColor: Colors.red.shade600,
        icon: Icons.warning_amber_rounded,
      );
      return null;
    }

    if (cm < 50 || cm > 300) {
      showMessage(
        context,
        "Height must be between 50 cm and 300 cm",
        backgroundColor: Colors.red.shade600,
        icon: Icons.warning_amber_rounded,
      );
      return null;
    }

    return cm;
  }

  //Height in feet validation
  static double? validateFeet(
    BuildContext context,
    TextEditingController feetController,
    TextEditingController inchController,
  ) {
    if (feetController.text.isEmpty) {
      showMessage(
        context,
        "Please enter feet",
        backgroundColor: Colors.red.shade600,
        icon: Icons.warning_amber_rounded,
      );
      return null;
    }

    double? feet = double.tryParse(feetController.text);
    double inch = double.tryParse(inchController.text) ?? 0;

    if (feet == null) {
      showMessage(
        context,
        "Please enter valid feet",
        backgroundColor: Colors.red.shade600,
        icon: Icons.warning_amber_rounded,
      );
      return null;
    }

    if (feet < 2 || feet > 10) {
      showMessage(
        context,
        "Feet must be between 2 and 10",
        backgroundColor: Colors.red.shade600,
        icon: Icons.warning_amber_rounded,
      );
      return null;
    }

    if (inch < 0 || inch > 11) {
      showMessage(
        context,
        "Inches must be between 0 and 11",
        backgroundColor: Colors.red.shade600,
        icon: Icons.warning_amber_rounded,
      );
      return null;
    }

    return (feet * 30.48) + (inch * 2.54);
  }

  // Weight Validation
  static double? validateWeight(
    BuildContext context,
    TextEditingController controller,
  ) {
    if (controller.text.isEmpty) {
      showMessage(
        context,
        "Please enter your weight",
        backgroundColor: Colors.red.shade600,
        icon: Icons.warning_amber_rounded,
      );
      return null;
    }

    double? weight = double.tryParse(controller.text);

    if (weight == null) {
      showMessage(
        context,
        "Please enter a valid weight",
        backgroundColor: Colors.red.shade600,
        icon: Icons.warning_amber_rounded,
      );
      return null;
    }

    if (weight < 10 || weight > 550) {
      showMessage(
        context,
        "Weight must be between 10 kg and 550 kg",
        backgroundColor: Colors.red.shade600,
        icon: Icons.warning_amber_rounded,
      );
      return null;
    }

    return weight;
  }

  // Age Validator
  static int? validateAge(
    BuildContext context,
    TextEditingController controller,
  ) {
    if (controller.text.isEmpty) {
      return 20;
    }

    int? age = int.tryParse(controller.text);

    if (age == null || age < 2 || age > 140) {
      showMessage(
        context,
        "Age must be between 2 and 140",
        backgroundColor: Colors.red.shade600,
        icon: Icons.warning_amber_rounded,
      );
      return null;
    }

    return age;
  }

  // Name Validator
  static String? validateName(
    BuildContext context,
    TextEditingController controller,
  ) {
    String userName = controller.text.trim();

    if (userName.isNotEmpty && userName.length > 40) {
      showMessage(
        context,
        "Name cannot exceed 40 characters",
        backgroundColor: Colors.red.shade600,
        icon: Icons.warning_amber_rounded,
      );
      return null;
    }

    return userName;
  }
}
