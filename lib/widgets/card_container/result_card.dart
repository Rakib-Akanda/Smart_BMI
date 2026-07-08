import 'package:bmi_calculator/services/copy_result.dart';
import 'package:flutter/material.dart';

class ResultCard extends StatelessWidget {
  final double bmi;
  final String bmiMessage;
  final String category;
  final String idealWeight;
  final String advice;
  final Color resultColor;
  final TextEditingController nameController;

  const ResultCard({
    super.key,
    required this.bmi,
    required this.bmiMessage,
    required this.category,
    required this.idealWeight,
    required this.advice,
    required this.resultColor,
    required this.nameController,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      key: const ValueKey("result"),
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: resultColor.withValues(alpha: .15),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: resultColor, width: 2),
      ),

      child: Column(
        children: [
          const SizedBox(height: 15),

          Text(
            bmiMessage,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),

          const SizedBox(height: 12),

          Text(
            bmi.toStringAsFixed(2),
            style: TextStyle(
              fontSize: 42,
              color: resultColor,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 10),

          Text(
            category,
            style: TextStyle(
              fontSize: 24,
              color: resultColor,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 20),

          const Divider(),

          const SizedBox(height: 15),

          const Row(
            children: [
              Icon(Icons.monitor_weight, color: Colors.blue),
              SizedBox(width: 10),
              Text(
                "Ideal Weight",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),

          const SizedBox(height: 8),

          Text(idealWeight, style: const TextStyle(fontSize: 17)),

          const SizedBox(height: 20),

          const Row(
            children: [
              Icon(Icons.favorite, color: Colors.blue),
              SizedBox(width: 10),
              Text(
                "Health Advice",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),

          const SizedBox(height: 8),

          Text(advice, style: const TextStyle(fontSize: 16)),

          const SizedBox(height: 25),

          SizedBox(
            width: double.infinity,
            height: 50,
            child: OutlinedButton.icon(
              onPressed: () => copyResult(
                context,
                nameController,
                bmi,
                category,
                idealWeight,
                advice,
              ),
              icon: const Icon(Icons.copy),
              label: const Text("Copy Result"),
              style: OutlinedButton.styleFrom(
                foregroundColor: Colors.blue,
                side: const BorderSide(color: Colors.blue, width: 1.5),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
