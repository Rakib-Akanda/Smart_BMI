import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  final VoidCallback onAboutPressed;

  const Header({super.key, required this.onAboutPressed});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.topRight,
          child: IconButton(
            onPressed: onAboutPressed,
            icon: const Icon(Icons.info_outline, color: Colors.white, size: 28),
          ),
        ),

        const SizedBox(height: 20),

        Image.asset("assets/icon/app_icon.png", width: 90, height: 90),

        const SizedBox(height: 15),

        const Text(
          "Smart BMI",
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),

        const SizedBox(height: 8),

        const Text(
          "Healthy Body, Healthy Life",
          style: TextStyle(color: Colors.white70, fontSize: 16),
        ),

        const SizedBox(height: 35),
      ],
    );
  }
}
