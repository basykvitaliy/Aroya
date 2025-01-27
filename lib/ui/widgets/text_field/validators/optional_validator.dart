
import 'package:aroya/ui/widgets/text_field/validators/validator.dart';

class OptionalValidator<T> implements Validator<T> {
  @override
  final ValidatorException error;

  final List<Validator<T>> validators;
  final Validator<T> emptyValidator;

  OptionalValidator({
    required this.emptyValidator,
    required this.validators,
    required this.error,
  });

  @override
  bool checkValid(T value) {
    if (emptyValidator.checkValid(value)) {
      return true;
    } else {
      for (final validator in validators) {
        if (validator.checkValid(value)) {
          return true;
        }
      }
      return false;
    }
  }
}
