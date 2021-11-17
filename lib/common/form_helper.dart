class FormHelper {
  static String? validateAlphabet(String value, String message) {
    return RegExp(r"^[a-zA-Z ]+$").hasMatch(value) ? null : message;
  }
}
