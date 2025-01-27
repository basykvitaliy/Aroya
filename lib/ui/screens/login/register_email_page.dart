import 'package:aroya/helpers/strings.dart';
import 'package:aroya/ui/screens/login/biometric_page.dart';
import 'package:aroya/ui/screens/login/register_code_page.dart';
import 'package:aroya/ui/screens/login/widgets/app_bar.dart';
import 'package:aroya/ui/screens/login/widgets/phone_text_field.dart';
import 'package:aroya/ui/style/colors.dart';
import 'package:aroya/ui/style/fonts.dart';
import 'package:aroya/ui/widgets/background_painter.dart';
import 'package:aroya/ui/widgets/button_widget.dart';
import 'package:aroya/ui/widgets/text_field/text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RegisterEmailPage extends StatefulWidget {
  RegisterEmailPage({super.key});

  @override
  State<RegisterEmailPage> createState() => _RegisterEmailPageState();
}

class _RegisterEmailPageState extends State<RegisterEmailPage> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  bool _isKeyboardVisible = false;

  @override void initState() {
    // TODO: implement initState
    super.initState();
    KeyboardVisibilityController().onChange.listen((bool visible) {
    // debugPrint("-------keyboard =$_isKeyboardVisible");
      setState(() {
        _isKeyboardVisible = visible;
      });
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     // resizeToAvoidBottomInset :true,

      appBar: const AroyaAppBar(
        isBack: true,
      ),
      body: Stack( children: [
        BackGroundPaint(),
        Padding(
          padding: EdgeInsets.only(top: _isKeyboardVisible?0:60.h, left: 10.w, right: 10.w),
          child: SizedBox(
            height: MediaQuery.of(context).size.height - 100,
            child: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Column(
                children: [
                  Center(child: _isKeyboardVisible?SizedBox.shrink():Image.asset('assets/images/key_lock.png')),
                   SizedBox(
                    height: _isKeyboardVisible?0:40.h,
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      email,
                      style: FontsStyleApp.white16,
                      textAlign: TextAlign.end,
                    ),
                  ),
                  SizedBox(
                      height: 60.h,
                      child: TextFieldApp(
                        controller: TextEditingController(),
                      )),
                  SizedBox(
                    height: 10.h,
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      password,
                      style: FontsStyleApp.white14,
                      textAlign: TextAlign.center,
                      maxLines: 3,
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  SizedBox(
                      height: 60.h,
                      child: TextFieldApp(
                        controller: TextEditingController(),
                      )),
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
                    padding: EdgeInsets.only(bottom: 20.h),
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
                            return BiometricPage();
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


////////////TODO LAst version
// import 'package:aroya/helpers/strings.dart';
// import 'package:aroya/ui/screens/login/register_code_page.dart';
// import 'package:aroya/ui/screens/login/widgets/app_bar.dart';
// import 'package:aroya/ui/screens/login/widgets/phone_text_field.dart';
// import 'package:aroya/ui/style/colors.dart';
// import 'package:aroya/ui/style/fonts.dart';
// import 'package:aroya/ui/widgets/background_painter.dart';
// import 'package:aroya/ui/widgets/button_widget.dart';
// import 'package:aroya/ui/widgets/text_field/text_field.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:flutter_svg/flutter_svg.dart';
//
// class RegisterEmailPage extends StatelessWidget {
//   RegisterEmailPage({super.key});
//
//   final GlobalKey<FormState> formKey = GlobalKey<FormState>();
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       resizeToAvoidBottomInset :true,
//
//       appBar: const AroyaAppBar(
//         isBack: true,
//       ),
//       body: Stack( children: [
//         BackGroundPaint(),
//         Padding(
//           padding: EdgeInsets.only(top: 60.h, left: 10.w, right: 10.w),
//           child: SizedBox(
//             height: MediaQuery.of(context).size.height - 100,
//             child: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
//               Column(
//                 children: [
//                   Center(child: Image.asset('assets/images/key_lock.png')),
//                   SizedBox(
//                     height: 40.h,
//                   ),
//                   Align(
//                     alignment: Alignment.centerRight,
//                     child: Text(
//                       email,
//                       style: FontsStyleApp.white16,
//                       textAlign: TextAlign.end,
//                     ),
//                   ),
//                   SizedBox(
//                       height: 60.h,
//                       child: TextFieldApp(
//                         controller: TextEditingController(),
//                       )),
//                   SizedBox(
//                     height: 10.h,
//                   ),
//                   Align(
//                     alignment: Alignment.centerRight,
//                     child: Text(
//                       password,
//                       style: FontsStyleApp.white14,
//                       textAlign: TextAlign.center,
//                       maxLines: 3,
//                     ),
//                   ),
//                   SizedBox(
//                     height: 10.h,
//                   ),
//                   SizedBox(
//                       height: 60.h,
//                       child: TextFieldApp(
//                         controller: TextEditingController(),
//                       )),
//                 ],
//               ),
//
//               //SizedBox(height: 100.h,),
//               Column(
//                 children: [
//                   Text(
//                     logInto,
//                     style: FontsStyleApp.blue14,
//                     textAlign: TextAlign.center,
//                   ),
//                   SizedBox(
//                     height: 10.h,
//                   ),
//                   Padding(
//                     padding: EdgeInsets.only(bottom: 20.h),
//                     child: ButtonApp(
//                       height: 54.h,
//                       width: 327.w,
//                       isChangeBtn: false,
//                       isDisabledBtn: false,
//
//                       bgColor: ColorsApp.lightGreen,
//                       onTap: () {
//                         //   if (formKey.currentState!.validate()) {
//                         Navigator.push(
//                           context,
//                           MaterialPageRoute(builder: (context) {
//                             return RegisterCodePage();
//                           }),
//                         );
//                         //  }
//                       },
//                       textButton: continueText,
//                       icon: SizedBox.shrink(),
//                       // child: Text('Validate'),
//                     ),
//                   ),
//                 ],
//               ),
//             ]),
//           ),
//         ),
//       ]),
//     );
//     ;
//   }
// }
