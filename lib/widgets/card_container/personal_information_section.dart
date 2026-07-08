import 'package:bmi_calculator/widgets/input_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class PersonalInformationSection extends StatelessWidget {
  final TextEditingController nameController;
  final TextEditingController ageController;

  const PersonalInformationSection({
    super.key,
    required this.nameController,
    required this.ageController,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 15),
        const Text(
          "Personal Information",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),

        const SizedBox(height: 15),

        TextField(
          controller: nameController,
          decoration: inputStyle(label: "Name (Optional)", icon: Icons.person),
        ),

        const SizedBox(height: 15),

        TextField(
          controller: ageController,
          keyboardType: const TextInputType.numberWithOptions(decimal: true),
          inputFormatters: [
            FilteringTextInputFormatter.allow(RegExp(r'^\d*\.?\d*$')),
          ],
          decoration: inputStyle(label: "Age", icon: Icons.timelapse),
        ),
      ],
    );
  }
}
