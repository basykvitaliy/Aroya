

String requiredFieldException =AppLocalizations.of(getIt.get<AppRouter>().navigatorKey.currentContext!)?.fieldIsRequired?? 'Field is required';

String stringRangeException(int min, int max) {

 String fieldShouldBe=AppLocalizations
      .of(getIt
      .get<AppRouter>()
      .navigatorKey
      .currentContext!)
      ?.fieldShouldBe ?? "Field should be" ;
     String minMax=   " $min - $max " ;
     String symbols= AppLocalizations
      .of(getIt
      .get<AppRouter>()
      .navigatorKey
      .currentContext!)
      ?.symbols ?? "symbols";

     return "$fieldShouldBe $minMax $symbols";
}
String invalidEmailException = AppLocalizations.of(getIt.get<AppRouter>().navigatorKey.currentContext!)?.emailformatIsNotCorrect??'Email format is not correct.';
 String existEmailException =AppLocalizations.of(getIt.get<AppRouter>().navigatorKey.currentContext!)?.accountWithThisEmailAlreadyExists?? 'Account with this email already exists.';
String emailDoesNotExistsException =AppLocalizations.of(getIt.get<AppRouter>().navigatorKey.currentContext!)?.accountWithThisEmailDoesntExists?? "Account with this email doesn't exists.";
String invalidConfirmationCodeException =AppLocalizations.of(getIt.get<AppRouter>().navigatorKey.currentContext!)?.thisCodeIsInvalid?? 'This code is invalid. Please re-enter';
String incorrectEmail =AppLocalizations.of(getIt.get<AppRouter>().navigatorKey.currentContext!)?.incorrectLoginDetails?? 'Incorrect login details. Please, try again.';
 String confirmPasswordIsNotMatched =AppLocalizations.of(getIt.get<AppRouter>().navigatorKey.currentContext!)?.confirmPasswordDoesNotMatch?? "Confirm password does not match";
 String passwordValidationError =AppLocalizations.of(getIt.get<AppRouter>().navigatorKey.currentContext!)?.passwordisNotValid??
    "Password is not valid. 8-character minimum. It must include at least 1 letter and 1 digit";
