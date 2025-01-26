import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';

class AppBarWidget extends StatelessWidget {
  AppBarWidget({
    super.key,
    this.leadingIcon,
    this.trailingIcon,
    this.onLeadingIconTap,
    this.onTrailingIconTap,
  });

  String? leadingIcon;
  String? trailingIcon;
  VoidCallback? onLeadingIconTap;
  VoidCallback? onTrailingIconTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        IconButton(
          onPressed: (){
            trailingIcon == null ? null : onTrailingIconTap!();
          },
          icon: SvgPicture.asset(
            trailingIcon ?? "",
          ), ),

        SvgPicture.asset(
          "assets/icons/logo.svg",
        ),

        IconButton(
          onPressed: (){
            leadingIcon == null ? null : onLeadingIconTap!();
          },
          icon: SvgPicture.asset(
            leadingIcon ?? "",
          ), ),


      ],
    );
  }
}