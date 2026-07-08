import 'package:flutter/material.dart';

class DeveloperFooter extends StatelessWidget {
  const DeveloperFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.only(bottom: 20),
      child: const Column(
        children: [
          Text(
            "Developed by",
            style: TextStyle(color: Colors.white70, fontSize: 14),
          ),

          SizedBox(height: 5),

          Text(
            "MD. Rakib Mia",
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
              letterSpacing: 1,
            ),
          ),
        ],
      ),
    );
  }
}
