import 'package:flutter/material.dart';

class GenderSection extends StatelessWidget {
  final String gender;
  final ValueChanged<String> onGenderChanged;

  const GenderSection({
    super.key,
    required this.gender,
    required this.onGenderChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 15),
        const Text(
          "Gender",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),

        const SizedBox(height: 15),

        Row(
          children: [
            Expanded(
              child: ChoiceChip(
                showCheckmark: false,
                avatar: Icon(
                  Icons.male,
                  color: gender == "Male" ? Colors.blue : Colors.grey,
                ),
                label: const Text("Male"),
                selected: gender == "Male",
                onSelected: (_) => onGenderChanged("Male"),
                selectedColor: Colors.blue.shade100,
                labelStyle: TextStyle(
                  color: gender == "Male" ? Colors.blue.shade900 : Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const SizedBox(width: 15),

            Expanded(
              child: ChoiceChip(
                showCheckmark: false,
                avatar: Icon(
                  Icons.female,
                  color: gender == "Female" ? Colors.pink : Colors.grey,
                ),
                label: const Text("Female"),
                selected: gender == "Female",
                onSelected: (_) => onGenderChanged("Female"),
                selectedColor: Colors.pink.shade100,
                labelStyle: TextStyle(
                  color: gender == "Female"
                      ? Colors.pink.shade900
                      : Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),

        const SizedBox(height: 15),
      ],
    );
  }
}
