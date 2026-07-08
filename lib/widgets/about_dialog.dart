import 'package:flutter/material.dart';

void showAbout(BuildContext context) {
  FocusManager.instance.primaryFocus?.unfocus();
  showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        title: Column(
          children: [
            Image.asset("assets/icon/app_icon.png", width: 70),
            const SizedBox(height: 10),
            const Text(
              "Smart BMI",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
        content: const Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              leading: Icon(Icons.person, color: Colors.blue),
              title: Text("Developer"),
              subtitle: Text("MD. Rakib Mia"),
            ),
            ListTile(
              leading: Icon(Icons.school, color: Colors.blue),
              title: Text("Academic Information"),
              subtitle: Text(
                "Sylhet Polytechnic Institute. \n7th | CST | 2nd Shift| 776340",
              ),
            ),
            ListTile(
              leading: Icon(Icons.email, color: Colors.blue),
              title: Text("Contact"),
              subtitle: Text("rmd04037@gmail.com \n01304152499 (Whatsapp)"),
            ),

            ListTile(
              leading: Icon(Icons.flutter_dash, color: Colors.blue),
              title: Text("Built With"),
              subtitle: Text("Flutter"),
            ),
            ListTile(
              leading: Icon(Icons.info, color: Colors.blue),
              title: Text("Version"),
              subtitle: Text("1.0.0"),
            ),
            ListTile(
              leading: Icon(Icons.calendar_today, color: Colors.blue),
              title: Text("Year"),
              subtitle: Text("2026"),
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text("Close"),
          ),
        ],
      );
    },
  );
}
