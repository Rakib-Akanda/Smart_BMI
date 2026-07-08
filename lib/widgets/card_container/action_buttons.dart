import 'package:flutter/material.dart';

class ActionButtons extends StatelessWidget {
  final VoidCallback onReset;
  final VoidCallback onCalculate;

  const ActionButtons({
    super.key,
    required this.onReset,
    required this.onCalculate,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Reset Button
        const SizedBox(height: 25),
        SizedBox(
          width: double.infinity,
          height: 50,
          child: OutlinedButton.icon(
            onPressed: onReset,
            icon: const Icon(Icons.refresh),
            label: const Text(
              "Reset",
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
            ),
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.blue,
              side: const BorderSide(color: Colors.blue, width: 1.5),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
            ),
          ),
        ),

        const SizedBox(height: 15),

        // Calculate Button
        SizedBox(
          width: double.infinity,
          height: 55,
          child: Container(
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                colors: [Color(0xff2563EB), Color(0xff06B6D4)],
              ),
              borderRadius: BorderRadius.circular(15),
            ),
            child: ElevatedButton(
              onPressed: onCalculate,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.transparent,
                shadowColor: Colors.transparent,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.monitor_heart, color: Colors.white),
                  SizedBox(width: 10),
                  Text(
                    "Calculate BMI",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
