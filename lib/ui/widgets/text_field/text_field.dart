import 'package:aroya/ui/style/colors.dart';
import 'package:aroya/ui/style/fonts.dart';
import 'package:aroya/ui/widgets/text_field/validators/double_range_validator.dart';
import 'package:aroya/ui/widgets/text_field/validators/string_range_validator.dart';
import 'package:aroya/ui/widgets/text_field/validators/validator.dart';

import 'package:flutter/material.dart';

class TextFieldApp extends StatelessWidget {
  const TextFieldApp({
    required this.controller,
    this.onChanged,
    this.hintText = '',
    this.focusNode,
    this.inputType,
    this.validators = const [],
    this.onEditingComplete,
    this.obscure = false,
    this.suffix,
    super.key,
  });

  final TextEditingController controller;
  final FocusNode? focusNode;
  final TextInputType? inputType;
  final List<Validator> validators;
  final String hintText;
  final Function(String)? onChanged;
  final Function()? onEditingComplete;
  final Widget? suffix;
  final bool obscure;

  int findMaxLength(List<Validator> validators) {
    for (final validator in validators) {
      if (validator is StringRangeValidator) {
        return validator.maxLength;
      }
    }
    return -1;
  }

  @override
  Widget build(BuildContext context) {
    final maxLength = findMaxLength(validators);

    return TextFormField(
      controller: controller,
      focusNode: focusNode,
      style: FontsStyleApp.white16,
      onChanged: onChanged,
      maxLength: maxLength,
      enableSuggestions: false,
      obscureText: obscure,
      obscuringCharacter: '*',
      onEditingComplete: onEditingComplete,
      validator: (value) {
        for (final validator in validators) {
          if (validator is DoubleRangeValidator) {
            if (!validator.checkValid(double.parse(value ?? ''))) {
              return validator.error.message;
            } else {
              return null;
            }
          }
          if (!validator.checkValid(value)) {
            return validator.error.message;
          }
        }
        return null;
      },
      keyboardType: inputType,
      cursorColor: ColorsApp.oceanGreen2,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(
            width: 2,

          ),
        ),
        filled: true,
        fillColor: ColorsApp.mainDarkBlue,
        contentPadding: const EdgeInsets.symmetric(vertical: 17, horizontal: 16),
        suffixIcon: suffix,
        counter: null,
        counterText: '',
        suffixIconConstraints: const BoxConstraints(maxHeight: 20),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(
            width: 2,
            color: Color(0xffFF4848),
          ),
        ),
        isDense: true,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(
              // width: 2,
              // color: ColorsApp.oceanGreen2,
              ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(
            width: 2,
            color: Color(0xffFF4848),
          ),
        ),
        errorStyle: TextStyle(
          color: const Color(0xffFF4848),
          fontSize: 16,
        ),
        hintStyle: TextStyle(
          fontSize: 16,
          color: const Color(0xffF3EAFF).withOpacity(0.5),
        ),
        errorMaxLines: 3,
        hintText: hintText,
        alignLabelWithHint: true,
        enabled: true,
        // enabledBorder: OutlineInputBorder(
        //   borderRadius: BorderRadius.circular(12),
        //   borderSide: const BorderSide(
        //     width: 2,
        //     color: Color.fromRGBO(243, 234, 255, 0.75),
        //   ),
        // ),
      ),
    );
  }
}
