
import 'package:aroya/ui/widgets/text_field/validators/validator.dart';

class EmptyValidator<Object> implements Validator<Object> {
  @override
  final ValidatorException error;

  EmptyValidator(this.error);

  @override
  bool checkValid(Object value) {
    if (value is String) {
      return value.isEmpty;
    } else {
      return value == null;
    }
  }
}
