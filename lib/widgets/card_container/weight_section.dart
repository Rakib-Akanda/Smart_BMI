import 'package:bmi_calculator/widgets/input_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class WeightSection extends StatelessWidget {
  final TextEditingController controller;

  const WeightSection({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 15),
        const Text(
          "Weight",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),

        const SizedBox(height: 12),

        TextField(
          controller: controller,
          keyboardType: const TextInputType.numberWithOptions(decimal: true),
          inputFormatters: [
            FilteringTextInputFormatter.allow(RegExp(r'^\d*\.?\d*$')),
          ],
          decoration: inputStyle(
            label: "Weight (kg)",
            icon: Icons.monitor_weight,
          ),
        ),
      ],
    );
  }
}
