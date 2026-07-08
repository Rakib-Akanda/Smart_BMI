import 'package:bmi_calculator/services/advice_service.dart';
import 'package:bmi_calculator/services/bmi_service.dart';
import 'package:bmi_calculator/services/ideal_weight_service.dart';
import 'package:bmi_calculator/services/message_service.dart';
import 'package:bmi_calculator/services/validation_service.dart';
import 'package:bmi_calculator/widgets/about_dialog.dart';
import 'package:bmi_calculator/widgets/card_container/action_buttons.dart';
import 'package:bmi_calculator/widgets/card_container/body_card.dart';
import 'package:bmi_calculator/widgets/card_container/gender_section.dart';
import 'package:bmi_calculator/widgets/card_container/height_section.dart';
import 'package:bmi_calculator/widgets/card_container/personal_information_section.dart';
import 'package:bmi_calculator/widgets/card_container/result_card.dart';
import 'package:bmi_calculator/widgets/card_container/weight_section.dart';
import 'package:bmi_calculator/widgets/developer_footer.dart';
import 'package:bmi_calculator/widgets/header.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const BMICalculatorApp());
}

class BMICalculatorApp extends StatelessWidget {
  const BMICalculatorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Smart BMI',
      theme: ThemeData(useMaterial3: true),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController cmController = TextEditingController();
  final TextEditingController feetController = TextEditingController();
  final TextEditingController inchController = TextEditingController();
  final TextEditingController weightController = TextEditingController();
  final TextEditingController ageController = TextEditingController();
  final TextEditingController nameController = TextEditingController();

  String gender = "Male";
  String advice = "";
  String idealWeight = "";

  bool isCm = true;
  double bmi = 0.0;
  String category = "";
  Color resultColor = Colors.transparent;
  String bmiMessage = "";

  void resetCalculator() {
    setState(() {
      cmController.clear();
      feetController.clear();
      inchController.clear();
      weightController.clear();
      ageController.clear();
      nameController.clear();

      gender = "Male";

      isCm = true;

      bmi = 0.0;

      category = "";

      advice = "";

      idealWeight = "";

      bmiMessage = "";

      resultColor = Colors.transparent;
    });
  }

  void calculateBMI() {
    FocusScope.of(context).unfocus();
    double? heightInCm = 0;

    // height
    if (isCm) {
      heightInCm = ValidationService.validateHeightCm(context, cmController);
    } else {
      heightInCm = ValidationService.validateFeet(
        context,
        feetController,
        inchController,
      );
    }
    if (heightInCm == null) return;

    // weight
    double? weight = ValidationService.validateWeight(
      context,
      weightController,
    );
    if (weight == null) return;
    double heightMeter = heightInCm / 100;

    //bmi
    final result = BmiService.calculate(heightInCm, weight, heightMeter);
    bmi = result.bmi;
    category = result.category;
    resultColor = result.resultColor;

    // ideal weight
    idealWeight = IdealWeightService.idealWeightCalculator(heightMeter);

    final age = ValidationService.validateAge(context, ageController);
    if (age == null) return;

    advice = AdviceService.getAdvice(bmi, age);

    final userName = ValidationService.validateName(context, nameController);
    if (userName == null) return;

    bmiMessage = MessageService.bmiMessage(userName);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xff0F172A), Color(0xff1E3A8A)],
          ),
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                // header section
                Header(onAboutPressed: () => showAbout(context)),

                // main card section container
                const SizedBox(height: 35),

                BodyCard(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      PersonalInformationSection(
                        nameController: nameController,
                        ageController: ageController,
                      ),

                      GenderSection(
                        gender: gender,
                        onGenderChanged: (value) {
                          setState(() {
                            gender = value;
                          });
                        },
                      ),
                      HeightSection(
                        isCm: isCm,
                        onCmSelected: () {
                          setState(() {
                            isCm = true;
                          });
                        },
                        onFtSelected: () {
                          setState(() {
                            isCm = false;
                          });
                        },
                        cmController: cmController,
                        feetController: feetController,
                        inchController: inchController,
                      ),

                      WeightSection(controller: weightController),

                      const SizedBox(height: 15),
                      // BMI Calculate button
                      ActionButtons(
                        onReset: resetCalculator,
                        onCalculate: calculateBMI,
                      ),
                      const SizedBox(height: 35),
                      // Result
                      AnimatedSwitcher(
                        duration: const Duration(milliseconds: 600),
                        switchInCurve: Curves.easeOutBack,
                        switchOutCurve: Curves.easeIn,
                        transitionBuilder: (child, animation) {
                          return FadeTransition(
                            opacity: animation,
                            child: SlideTransition(
                              position: Tween<Offset>(
                                begin: const Offset(0, .25),
                                end: Offset.zero,
                              ).animate(animation),
                              child: child,
                            ),
                          );
                        },
                        child: bmi > 0
                            ? ResultCard(
                                key: const ValueKey("result"),
                                bmi: bmi,
                                bmiMessage: bmiMessage,
                                category: category,
                                idealWeight: idealWeight,
                                advice: advice,
                                resultColor: resultColor,
                                nameController: nameController,
                              )
                            : const SizedBox(key: ValueKey("empty")),
                      ),
                    ],
                  ),
                ),

                // Developed by
                const SizedBox(height: 35),

                const DeveloperFooter(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
