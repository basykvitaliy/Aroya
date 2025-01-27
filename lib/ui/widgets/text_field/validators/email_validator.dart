import 'package:aroya/ui/widgets/text_field/validators/validator.dart';
import 'package:email_validator/email_validator.dart' as ev;

class EmailValidator implements Validator<String> {
  @override
  final ValidatorException error;

  EmailValidator(this.error);

  @override
  bool checkValid(String value) {
    return ev.EmailValidator.validate(value);
  }
}

class PasswordValidator implements Validator<String> {
  @override
  final ValidatorException error;

  PasswordValidator(this.error);

  @override
  bool checkValid(String value) {
    RegExp passwordRegExp = RegExp(r'^(?=.*[a-zA-Z])(?=.*\d).+');
    return passwordRegExp.hasMatch(value);
  }
}

class ExistsEmailValidator implements Validator<String> {
  @override
  final ValidatorException error;

  final bool isEmailExists;

  ExistsEmailValidator(this.error, {required this.isEmailExists});

  @override
  bool checkValid(String value) {
    return !isEmailExists;
  }
}

class VerificationCodeValidator implements Validator<String> {
  @override
  final ValidatorException error;

  final bool invalidVerificationCode;

  VerificationCodeValidator(this.error, {required this.invalidVerificationCode});

  @override
  bool checkValid(String value) {
    return !invalidVerificationCode;
  }
}

class CurrentPasswordValidator implements Validator<String> {
  @override
  final ValidatorException error;

  final bool invalidCurrentPassword;

  CurrentPasswordValidator(this.error, {required this.invalidCurrentPassword});

  @override
  bool checkValid(String value) {
    return !invalidCurrentPassword;
  }
}

class ConfirmPasswordValidatorValidator implements Validator<String> {
  @override
  final ValidatorException error;

  final bool confirmPasswordIsNotMatched;

  ConfirmPasswordValidatorValidator(this.error, {required this.confirmPasswordIsNotMatched});

  @override
  bool checkValid(String value) {
    return !confirmPasswordIsNotMatched;
  }
}

class NewPasswordValidatorValidator implements Validator<String> {
  @override
  final ValidatorException error;

  final bool newPasswordIsMatchedWithCurrent;

  NewPasswordValidatorValidator(this.error, {required this.newPasswordIsMatchedWithCurrent});

  @override
  bool checkValid(String value) {
    return !newPasswordIsMatchedWithCurrent;
  }
}

class CorrectEmailValidator implements Validator<String> {
  @override
  final ValidatorException error;

  final bool incorrectEmail;

  CorrectEmailValidator(this.error, {required this.incorrectEmail});

  @override
  bool checkValid(String value) {
    return !incorrectEmail;
  }
}
