
class Validator {
  static String? validateName(value) {
    if (value.isEmpty) {
      return 'Enter Name';
    } else {
      return null;
    }
  }

  static String? validatePhone(value) {
    String pattern = r'(^[0-9]*$)';
    RegExp regExp = RegExp(pattern);
    if (value.isEmpty) {
      return 'Enter Phone';
    } else if (!regExp.hasMatch(pattern)) {
      return 'Phone Must be digits';
    } else {
      return null;
    }
  }

  static String? validateEmail(value) {
    String pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regExp = RegExp(pattern);
    if (value.isEmpty) {
      return 'Enter Email';
    } else if (!regExp.hasMatch(value)) {
      return 'Invalid Email';
    } else {
      return null;
    }
  }

  static String? validateNationalId(value) {
    if (value.isEmpty) {
      return 'إدخل الرقم القومي الخاص بك';
    } else if (value.length < 14) {
      return 'idV';
    } else {
      return null;
    }
  }

  static String? validatePassword(value) {
    if (value.isEmpty) {
      return 'passV';
    } else {
      return null;
    }
  }

  static String? validateCurrentPassword(value) {
    if (value.isEmpty) {
      return 'إدخل كلمة المرور الحالية';
    } else {
      return null;
    }
  }

  static String? validateNewPassword(value) {
    if (value.isEmpty) {
      return 'إدخل كلمة المرور الجديدة';
    } else if (value.length < 6) {
      return 'يجب ان تكون كلمة المرور اكثر من 6 أرقام/أحرف';
    } else {
      return null;
    }
  }

  static String? validateEmpty(value) {
    if (value.isEmpty) {
      return "It Can't be empty";
    } else {
      return null;
    }
  }
}