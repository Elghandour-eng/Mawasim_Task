
class Validator {
  static String? validateName(value) {
    if (value.isEmpty) {
      return 'ادخل الاسم';
    }else if(value.length < 6){
      return 'يجب الا يقل الاسم عن 6 احرف';
    } else {
      return null;
    }
  }

  static String? validatePhone(value) {
    //String pattern = r'(^[0-9]*$)';
   // RegExp regExp = RegExp(pattern);
    if (value.isEmpty) {
      return 'ادخل رقم الهاتف';}
    // } else if (!regExp.hasMatch(pattern)) {
    //   return 'Phone Must be digits';
    // }
    else {
      return null;
    }
  }

  static String? validateEmail(value) {
    String pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regExp = RegExp(pattern);
    if (value.isEmpty) {
      return 'إدخل البريد الالكتروني الخاص بك';
    } else if (regExp.hasMatch(value)) {
      return ' البريد الالكتروني غير صالح';
    } else {
      return null;
    }
  }

  static String? validateNationalId(value) {
    if (value.isEmpty) {
      return 'إدخل البريد الالكتروني الخاص بك';
    } else if (value.length < 14) {
      return 'برجاء ادخال كلمة المرور';
    } else {
      return null;
    }
  }

  static String? validatePassword(value) {
    if (value.isEmpty) {
      return 'إدخل كلمة المرور الخاص بك';
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

  static String? validateNewPassword(value,password) {
    if (value.isEmpty) {
      return 'إدخل كلمة المرور الجديدة';
    } else if (value.length < 6) {
      return 'يجب ان تكون كلمة المرور اكثر من 6 أرقام/أحرف';
    } else if(value!= password){
      return 'تاكد من تطابق كلمتين المرور';
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