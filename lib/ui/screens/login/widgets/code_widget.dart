
import 'package:aroya/ui/style/colors.dart';
import 'package:flutter/material.dart';
import 'package:sms_autofill/sms_autofill.dart';

class CodeAutoFillWidget extends StatefulWidget {
  const CodeAutoFillWidget({Key? key}) : super(key: key);

  @override
  State<CodeAutoFillWidget> createState() => _CodeAutoFillWidgetState();
}

class _CodeAutoFillWidgetState extends State<CodeAutoFillWidget> with CodeAutoFill {
  String? appSignature;
  String? otpCode;

  @override
  void codeUpdated() {
    setState(() {
      otpCode = code!;
    });
  }

  @override
  void initState() {
    super.initState();
   // listenForCode();

    // SmsAutoFill().getAppSignature.then((signature) {
    //   setState(() {
    //     appSignature = signature;
    //   });
    // });
  }

  @override
  void dispose() {
    super.dispose();
    cancel();
  }

  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(fontSize: 18);

    return Container(
      child: PinFieldAutoFill(

        codeLength: 5,  // Установи нужную длину кода
        decoration: BoxLooseDecoration(
          textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color: Colors.white),
          bgColorBuilder: FixedColorBuilder(ColorsApp.mainDarkBlue), // Цвет фона полей
          strokeColorBuilder: FixedColorBuilder(Colors.transparent),

        ),
        currentCode: otpCode,
        onCodeSubmitted: (code) {
          print("Код отправлен: $code");
        },
        onCodeChanged: (code) {
          // if (code?.length == 5) {
          //   FocusScope.of(context).requestFocus(FocusNode());
          // }
          // setState(() {
          //   otpCode = code ?? '';
          // });
        },
      ),
    );
  }
  }

