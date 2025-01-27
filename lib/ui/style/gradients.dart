import 'package:aroya/ui/style/colors.dart';
import 'package:flutter/material.dart';

class GradientApp{
  static const  LinearGradient welcomeGradient = LinearGradient(
    begin: Alignment.centerRight,
    end: Alignment.centerLeft,

    colors: [Color(0xFF363E67),Color(0xFF36B0FD),],
  );

  static const  LinearGradient greyLine = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,

    colors: [ColorsApp.greyScale50,ColorsApp.greyScale600,ColorsApp.greyScale600,],
  );
}