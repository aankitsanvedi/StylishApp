class VaildatorAll {
// Email Vaildation

  String? vaildEmail(String? emailId) {
    if (emailId == null ||
        emailId.isEmpty ||
        !emailId.contains('@') ||
        !emailId.contains('.')) {
      return 'Enter Vaild Email';
    }
    return null;
  }

//  Password Vaildation

  String? vaildPassword(String? emailPassword) {
    RegExp passwordRegex =
        RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');
    if (emailPassword!.isEmpty) {
      return 'Please enter password';
    } else {
      if (!passwordRegex.hasMatch(emailPassword)) {
        return 'Enter valid password';
      } else {
        return null;
      }
    }
  }

  // Phone Number Vaildation

  String? validateMobile(String? value) {
    String pattern = r'(^(?:[+0]9)?[0-9]{10,12}$)';
    RegExp regExp = RegExp(pattern);

    if (value!.isEmpty) {
      return 'Please enter mobile number';
    } else if (!regExp.hasMatch(value)) {
      return 'Please enter valid mobile number';
    }
    return null;
  }
}
