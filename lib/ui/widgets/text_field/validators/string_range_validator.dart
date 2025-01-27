
import 'package:aroya/ui/widgets/text_field/validators/validator.dart';

class StringRangeValidator implements Validator<String> {
  @override
  final ValidatorException error;
  final int minLength;
  final int maxLength;

  StringRangeValidator(this.minLength, this.maxLength, this.error);

  @override
  bool checkValid(String value) {
    return value.length >= minLength && value.length <= maxLength;
  }
}
