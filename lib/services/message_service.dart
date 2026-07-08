class MessageService {
  static String bmiMessage(String userName) {
    if (userName.isEmpty) {
      return "Your BMI is";
    }

    return "$userName, Your BMI is";
  }
}
