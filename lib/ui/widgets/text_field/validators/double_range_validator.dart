import 'package:aroya/ui/widgets/text_field/validators/validator.dart';

///Валидатор, проверяющий, что значение в допустимом диапазоне
class DoubleRangeValidator implements Validator<double> {
  @override
  final ValidatorException error;
  final double min;
  final double max;

  DoubleRangeValidator(this.min, this.max, this.error);

  @override
  bool checkValid(double value) {
    return value >= min && value <= max;
  }
}
