class Validator {
  static String? validatePassword({required String string}) {
    if (string.isEmpty) {
      return "Required";
    } else if (string.length < 6) {
      return "Password should be at least 6 characters";
    } else if (string.length > 15) {
      return "Password should not be greater than 15 characters";
    } else {
      return null;
    }
  }

  static String? confirmPassword(
      {required String password, required String cPassword}) {
    if (password == cPassword) {
      return null;
    } else {
      return "Passwords do not match.";
    }
  }

  /// Email validator
  static String? validateEmail({required String string}) {
    String regex =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    if (string.isEmpty) return "Required";
    if (!validRegexExp(regex, string)) {
      return "Invalid Email";
    } else {
      return null;
    }
  }

  static String? validatePhone({required String string}) {
    if (string.isEmpty) {
      return "Required";
    } else if (string.length < 6) {
      return "Phone should be at least 6 characters";
    } else if (string.length > 10) {
      return "Phone should not be greater than 10 characters";
    } else {
      return null;
    }
  }

  /// Validate regex for the string
  static bool validRegexExp(String regex, String string) {
    return RegExp(regex).hasMatch(string);
  }

  static String? validateNumber({String? string}) {
    if (string == null || string.isEmpty) {
      return "Required";
    } else {
      try {
        double parsedNumber = double.parse(string);
        if (parsedNumber > -1) {
          return null;
        } else {
          return "Invalid number";
        }
      } catch (e) {
        return "Invalid number format";
      }
    }
  }
}
