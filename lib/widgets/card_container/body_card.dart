import 'package:flutter/material.dart';

class BodyCard extends StatelessWidget {
  final Widget child;

  const BodyCard({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25),
      ),
      child: child,
    );
  }
}
