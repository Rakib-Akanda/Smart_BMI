//input template
import 'package:flutter/material.dart';

InputDecoration inputStyle({required String label, required IconData icon}) {
  return InputDecoration(
    labelText: label,

    prefixIcon: Icon(icon, color: Colors.blue),

    filled: true,

    fillColor: const Color(0xffF8FAFC),

    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(15),
      borderSide: BorderSide.none,
    ),

    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(15),
      borderSide: const BorderSide(color: Color(0xffE2E8F0)),
    ),

    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(15),
      borderSide: const BorderSide(color: Colors.blue, width: 2),
    ),
  );
}
