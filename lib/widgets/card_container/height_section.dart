import 'package:bmi_calculator/widgets/input_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HeightSection extends StatelessWidget {
  final bool isCm;

  final VoidCallback onCmSelected;
  final VoidCallback onFtSelected;

  final TextEditingController cmController;
  final TextEditingController feetController;
  final TextEditingController inchController;

  const HeightSection({
    super.key,
    required this.isCm,
    required this.onCmSelected,
    required this.onFtSelected,
    required this.cmController,
    required this.feetController,
    required this.inchController,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Height Unit",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),

        const SizedBox(height: 12),

        Row(
          children: [
            Expanded(
              child: ChoiceChip(
                showCheckmark: false,
                avatar: Icon(
                  Icons.straighten,
                  color: isCm ? Colors.blue : Colors.grey,
                ),
                label: const Text("CM"),
                selected: isCm,
                onSelected: (_) => onCmSelected(),
                selectedColor: Colors.blue.shade100,
                labelStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: isCm ? Colors.blue.shade900 : Colors.black,
                ),
              ),
            ),

            const SizedBox(width: 15),

            Expanded(
              child: ChoiceChip(
                showCheckmark: false,
                avatar: Icon(
                  Icons.height,
                  color: !isCm ? Colors.blue : Colors.grey,
                ),
                label: const Text("FT"),
                selected: !isCm,
                onSelected: (_) => onFtSelected(),
                selectedColor: Colors.blue.shade100,
                labelStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: !isCm ? Colors.blue.shade900 : Colors.black,
                ),
              ),
            ),
          ],
        ),

        const SizedBox(height: 15),

        if (isCm)
          TextField(
            controller: cmController,
            keyboardType: const TextInputType.numberWithOptions(decimal: true),
            inputFormatters: [
              FilteringTextInputFormatter.allow(RegExp(r'^\d*\.?\d*$')),
            ],
            decoration: inputStyle(label: "Height (cm)", icon: Icons.height),
          )
        else
          Row(
            children: [
              const SizedBox(height: 15),
              Expanded(
                child: TextField(
                  controller: feetController,
                  keyboardType: const TextInputType.numberWithOptions(
                    decimal: true,
                  ),
                  inputFormatters: [
                    FilteringTextInputFormatter.allow(RegExp(r'^\d*\.?\d*$')),
                  ],
                  decoration: inputStyle(label: "Feet", icon: Icons.height),
                ),
              ),

              const SizedBox(width: 15),

              Expanded(
                child: TextField(
                  controller: inchController,
                  keyboardType: const TextInputType.numberWithOptions(
                    decimal: true,
                  ),
                  inputFormatters: [
                    FilteringTextInputFormatter.allow(RegExp(r'^\d*\.?\d*$')),
                  ],
                  decoration: inputStyle(label: "Inches", icon: Icons.height),
                ),
              ),
            ],
          ),
      ],
    );
  }
}
