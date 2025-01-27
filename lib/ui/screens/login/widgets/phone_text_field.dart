import 'package:aroya/ui/style/colors.dart';
import 'package:aroya/ui/style/fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class PhoneTextField extends StatefulWidget {
  const PhoneTextField({super.key, required this.formKey});

  final GlobalKey<FormState> formKey;

  @override
  _PhoneTextFieldState createState() => _PhoneTextFieldState();
}

class _PhoneTextFieldState extends State<PhoneTextField> {
  final TextEditingController controller = TextEditingController();
  String initialCountry = 'IL';
  PhoneNumber number = PhoneNumber(isoCode: 'IL', dialCode: "+972");

  @override
  Widget build(BuildContext context) {
    return Form(
      key: widget.formKey,
      child: InternationalPhoneNumberInput(
        onInputChanged: (PhoneNumber number) {
          print(number.phoneNumber);
        },
        onInputValidated: (bool value) {
          print(value);
        },
        selectorConfig: SelectorConfig(
          showFlags: false,
          setSelectorButtonAsPrefixIcon: true,
          leadingPadding: 20.w,
          selectorType: PhoneInputSelectorType.BOTTOM_SHEET,
          useBottomSheetSafeArea: true,
        ),
        ignoreBlank: false,
        autoValidateMode: AutovalidateMode.disabled,
        selectorTextStyle: TextStyle(color: Colors.white, fontSize: 18.sp),
        initialValue:number,
        textFieldController: controller,
        textStyle: FontsStyleApp.white18,
        formatInput: true,

        inputDecoration: InputDecoration(
          //suffix: Text(number.dialCode.toString()),
          filled: true,
          // Включить фон
          fillColor: ColorsApp.mainDarkBlue,
          // prefixText: initialCountry,

          // Цвет фона
          //labelText: "+972 1800-000",
          labelStyle: TextStyle(color: Colors.white),
          // Цвет текста метки
          //hintText: "+972 1800-000",
          hintStyle: TextStyle(color: Colors.white),
          // Цвет подсказки
          // border: OutlineInputBorder(
          //   borderRadius: BorderRadius.circular(12),
          //   borderSide: BorderSide(color: Colors.white),
          // ),
          // enabledBorder: OutlineInputBorder(
          //   borderRadius: BorderRadius.circular(12),
          //   borderSide: BorderSide(color: Colors.white),
          // ),
          // focusedBorder: OutlineInputBorder(
          //   borderRadius: BorderRadius.circular(12),
          //   borderSide: BorderSide(color: Colors.orange, width: 2),
          // ),
          contentPadding: EdgeInsets.symmetric(vertical: 16, horizontal: 12),
        ),
        keyboardType: TextInputType.phone,
        //inputBorder: OutlineInputBorder(),
        onSaved: (PhoneNumber number) {
          print('On Saved: $number');
        },
      ),
    );
  }

  void getPhoneNumber(String phoneNumber) async {
    PhoneNumber number = await PhoneNumber.getRegionInfoFromPhoneNumber(phoneNumber, 'US');

    setState(() {
      this.number = number;
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}
