import 'package:aroya/ui/widgets/text_field/validators/validator.dart';


///Валидатор, проверяющий на непустое значение
class NotEmptyValidator<T> implements Validator<T> {
  @override
  final ValidatorException error;

  NotEmptyValidator({required this.error});

  @override
  bool checkValid(T value) {
    if (value is String) {
      return value.isNotEmpty;
    } else {
      return value != null;
    }
  }
}

///Check String for null or empty
bool validateString(String? value) {
  if (value == null || value.isEmpty == true) {
    return true;
  } else {
    return false;
  }
}
