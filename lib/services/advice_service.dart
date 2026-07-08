class AdviceService {
  static String getAdvice(double bmi, int age) {
    if (age < 20) {
      return "BMI for people under 20 should be interpreted using age-specific growth charts.";
    } else if (bmi < 18.5) {
      return "You are underweight.\n\n• Increase healthy calorie intake.\n• Eat protein-rich foods.\n• Consult a nutritionist if needed.";
    } else if (bmi < 25) {
      return "Great! Your BMI is in the normal range.\n\n• Maintain your healthy diet.\n• Exercise regularly.\n• Stay hydrated.";
    } else if (bmi < 30) {
      return "You are overweight.\n\n• Reduce sugary foods.\n• Walk or exercise at least 30 minutes daily.\n• Monitor your weight regularly.";
    } else {
      return "Your BMI indicates obesity.\n\n• Consult a healthcare professional.\n• Follow a balanced diet.\n• Exercise regularly.";
    }
  }
}
