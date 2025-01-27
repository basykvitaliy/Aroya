import 'package:aroya/helpers/strings.dart';
import 'package:aroya/ui/screens/login/register_email_page.dart';
import 'package:aroya/ui/screens/login/widgets/app_bar.dart';
import 'package:aroya/ui/screens/login/widgets/code_widget.dart';
import 'package:aroya/ui/style/colors.dart';
import 'package:aroya/ui/style/fonts.dart';
import 'package:aroya/ui/widgets/background_painter.dart';
import 'package:aroya/ui/widgets/button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RegisterCodePage extends StatelessWidget {
  RegisterCodePage({super.key});

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AroyaAppBar(isBack: true),

      resizeToAvoidBottomInset: true,
      body: Stack(fit: StackFit.expand, children: [
        BackGroundPaint(),
        Padding(
          padding: EdgeInsets.only(top: 60.h, left: 10.w, right: 10.w),
          child: SizedBox(
           // height: MediaQuery.of(context).size.height - 100.h, // Ограничение по высоте
            child: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Column(
                children: [
                  Center(child: Image.asset('assets/images/key_lock.png')),
                  SizedBox(
                    height: 40.h,
                  ),
                  SizedBox(height: 60.h, child: CodeAutoFillWidget()),
                  SizedBox(
                    height: 10.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        notMyNumber,
                        style: FontsStyleApp.white14,
                        textAlign: TextAlign.center,
                        maxLines: 3,
                      ),
                      Icon(
                        Icons.arrow_forward_ios_outlined,
                        color: Colors.white,
                      )
                    ],
                  ),
                ],
              ),

              //SizedBox(height: 100.h,),
              Column(
                children: [
                  Text(
                    didntReceiveCode,
                    style: FontsStyleApp.blue14,
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 20.h),
                    child: ButtonApp(
                      height: 54.h,
                      width: 327.w,
                      isChangeBtn: false,
                      isDisabledBtn: false,

                      bgColor: ColorsApp.lightGreen,
                      onTap: () {
                        formKey.currentState?.validate();
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) {
                            return RegisterEmailPage();
                          }),
                        );
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
