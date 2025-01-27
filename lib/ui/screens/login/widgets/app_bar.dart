
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AroyaAppBar extends StatelessWidget implements PreferredSizeWidget  {
  const AroyaAppBar({super.key, required this.isBack});
   final bool isBack;
@override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: isBack,
      backgroundColor: Colors.transparent,
      toolbarHeight: 100.h,
      title:  SvgPicture.asset('assets/images/logo.svg'),
      centerTitle: true,
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize =>Size.fromHeight(100.h);
}
