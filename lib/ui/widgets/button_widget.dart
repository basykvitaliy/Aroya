import 'package:aroya/ui/style/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ButtonWidget extends StatelessWidget {
  ButtonWidget({
    Key? key,
    required this.textButton,
    required this.isChangeBtn,
    required this.onTap,
    this.width,
    this.height,
    this.bgColor,
    this.isDisabledBtn,
  }) : super(key: key);
  final String textButton;
  final bool isChangeBtn;
  bool? isDisabledBtn;
  final VoidCallback onTap;
  double? width;
  double? height = 60;
  Color? bgColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: isDisabledBtn!
          ? BoxDecoration(
              color: isChangeBtn ? bgColor ?? Colors.amber : Colors.transparent,
              border: isChangeBtn
                  ? Border.all(width: 0, color: Colors.transparent)
                  : Border.all(width: 1, color: Colors.amber),
              borderRadius: BorderRadius.circular(10),
            )
          : BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.circular(10),
            ),
      child: TextButton(
        style: TextButton.styleFrom(
          foregroundColor: !isChangeBtn ? Colors.amber : Colors.amber,
        ),
        onPressed: isDisabledBtn! ? onTap : null,
        child: Text(
          textButton,
        ),
      ),
    );
  }
}

class ButtonApp extends StatelessWidget {
  ButtonApp({
    Key? key,
    required this.textButton,
    required this.isChangeBtn,
    required this.onTap,
    required this.icon,
    this.width,
    this.height,
    this.bgColor,
    this.isDisabledBtn,

  }) : super(key: key);
  final Widget icon;
  final String textButton;
  final bool isChangeBtn;
  bool? isDisabledBtn;
  final VoidCallback onTap;
  double? width;
  double? height = 60;
  Color? bgColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
              color:bgColor,
              borderRadius: BorderRadius.circular(50),
            ),
      child: TextButton(
        onPressed: onTap,

       child:  Stack(
          alignment: Alignment.center,
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child:icon,
            ),
            Center(
              child: Text(textButton,style: TextStyle(color: ColorsApp.mainDarkBlue,fontSize: 18.sp),),
            ),
          ],
        ),

      ),
    );
  }
}
