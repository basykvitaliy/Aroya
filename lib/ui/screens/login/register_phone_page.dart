import 'package:aroya/helpers/strings.dart';
import 'package:aroya/ui/screens/login/register_code_page.dart';
import 'package:aroya/ui/screens/login/widgets/app_bar.dart';
import 'package:aroya/ui/screens/login/widgets/phone_text_field.dart';
import 'package:aroya/ui/style/colors.dart';
import 'package:aroya/ui/style/fonts.dart';
import 'package:aroya/ui/widgets/background_painter.dart';
import 'package:aroya/ui/widgets/button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RegisterPhonePage extends StatelessWidget {
  RegisterPhonePage({super.key});

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: const AroyaAppBar(isBack: false,),
      body: Stack(
          fit: StackFit.expand,
          children: [
        BackGroundPaint(),
        Padding(
          padding: EdgeInsets.only(top: 60.h, left: 10.w, right: 10.w),
          child: SizedBox(
            height: MediaQuery.of(context).size.height-100,
            child: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,

                children: [
              Column(
                children: [

                  Center(child: Image.asset('assets/images/key_lock.png')),
                  SizedBox(
                    height: 40.h,
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      phoneNumber,
                      style: FontsStyleApp.white16,
                      textAlign: TextAlign.end,
                    ),
                  ),
                 SizedBox(height: 60.h, child: PhoneTextField(formKey: formKey)),
                  SizedBox(
                    height: 10.h,
                  ),
                  Text(
                    sendCode,
                    style: FontsStyleApp.white14,
                    textAlign: TextAlign.center,
                    maxLines: 3,
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Text(
                    userTerms,
                    style: FontsStyleApp.blue14,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),

              //SizedBox(height: 100.h,),
              Column(
                children: [
                  Text(
                    logInto,
                    style: FontsStyleApp.blue14,
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom:20.h),
                    child: ButtonApp(
                      height: 54.h,
                      width: 327.w,
                      isChangeBtn: false,
                      isDisabledBtn: false,

                      bgColor: ColorsApp.lightGreen,
                      onTap: () {
                     //   if (formKey.currentState!.validate()) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) {
                              return RegisterCodePage();
                            }),
                          );
                      //  }
                      },
                      textButton: continueText,
                      icon: SizedBox.shrink(),
                      // child: Text('Validate'),
                    ),
                  ),
                ],
              ),
            ]),
          ),
        ),
      ]),
    );
    ;
  }
}
