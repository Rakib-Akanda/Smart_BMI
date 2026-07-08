# Smart BMI Calculator

A modern and user-friendly Body Mass Index (BMI) Calculator built with Flutter.

Smart BMI helps users calculate their BMI accurately using either centimeters or feet/inches, provides healthy weight recommendations, personalized health advice, and allows users to copy their results easily.

---

## Features

- BMI calculation using:
  - Centimeters (cm)
  - Feet & Inches (ft/in)
- Real-time input validation
- Healthy BMI category detection
  - Underweight
  - Normal
  - Overweight
  - Obese
- Ideal weight calculation
- Personalized health advice based on:
  - BMI
  - Age
- Optional name support for personalized result messages
- Copy result with one tap
- Modern Material 3 UI
- Beautiful gradient design
- Responsive layout
- Smooth result animation
- Reset calculator instantly
- About dialog
- Clean project architecture
- Reusable widgets
- Modular service-based structure

---

## BMI Categories

| BMI            | Category    |
| -------------- | ----------- |
| Below 18.5     | Underweight |
| 18.5 – 24.9    | Normal      |
| 25.0 – 29.9    | Overweight  |
| 30.0 and Above | Obese       |

---

## Project Structure

```
lib/
│
├── models/
├── services/
├── widgets/
│   ├── card_container/
│   ├── header.dart
│   ├── developer_footer.dart
│   └── about_dialog.dart
│
├── utils/
├── main.dart
```

---

## Built With

- Flutter
- Dart
- Material 3

---

## Input Validation

The application validates:

- Height
- Weight
- Feet
- Inches
- Age
- Name

Proper error messages are displayed whenever invalid input is entered.

---

## Health Advice

The application automatically generates health advice based on:

- Age
- BMI Category

This helps users better understand their health condition after calculation.

---

## Copy Result

The generated result includes:

- Name (optional)
- BMI
- Category
- Ideal Weight
- Health Advice

The entire result can be copied with a single button.

---

## Screenshots

```
assets/screenshots/home.jpeg

assets/screenshots/result.jpeg
```

Example:

| Home           | Result         |
| -------------- | -------------- |
| Add Screenshot | Add Screenshot |

---
## Download

Download the latest Android APK from the GitHub Releases page.

[Download Latest APK](https://github.com/Rakib-Akanda/Smart_BMI/releases/latest)

## Getting Started

### Clone the repository

```bash
git clone https://github.com/your-username/smart-bmi.git
```

### Open project

```bash
cd smart-bmi
```

### Install dependencies

```bash
flutter pub get
```

### Run the application

```bash
flutter run
```

---

## Build APK

Debug APK

```bash
flutter build apk
```

Release APK

```bash
flutter build apk --release
```

Generated APK:

```
build/app/outputs/flutter-apk/app-release.apk
```

---

## Requirements

- Flutter SDK
- Dart SDK
- Android Studio or VS Code
- Android Emulator or Physical Android Device

---

## Developer

**MD. Rakib Mia**

Academic Information

Sylhet Polytechnic Institute

Computer Science & Technology (CST)

7th Semester

2nd Shift

Roll: 776340

Email

rmd04037@gmail.com

WhatsApp

01304162499

---

## Version

Current Version

```
1.0.0
```

---

## License

This project is developed for educational and learning purposes.

Feel free to use, modify, and improve it.

---

## Support

If you found this project helpful, consider giving it a ⭐ on GitHub.
