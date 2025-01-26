import 'package:aroya/ui/style/colors.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class UsersCardWidget extends StatelessWidget {
  UsersCardWidget({
    super.key,
    required this.isHaveCard,
  });

  bool isHaveCard;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.centerRight,
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          width: MediaQuery.of(context).size.width,
          height: 100,
          decoration: BoxDecoration(
            border: Border.all(width: 1, color: ColorsApp.gradientStart),
            borderRadius: BorderRadius.circular(12),
            color: ColorsApp.white,
            gradient: const RadialGradient(
              center: Alignment.topCenter,
              radius: 2.5,
              colors: [
                ColorsApp.gradientStart,
                ColorsApp.gradientCentral,
                ColorsApp.gradientEnd,
              ],
            ),
          ),
        ),
        Positioned(
          left: 0,
          right: 0,
          child: Column(
            children: [
              Text(
                "איזק דני",
                textAlign: TextAlign.center,
                style: GoogleFonts.heebo(textStyle: TextStyle(fontSize: 18, color: ColorsApp.white, fontWeight: FontWeight.w700)),
              ),
              Text(
                "48 גיל",
                textAlign: TextAlign.center,
                style: GoogleFonts.heebo(textStyle: TextStyle(fontSize: 14, color: ColorsApp.white, fontWeight: FontWeight.w700)),
              ),
              Text(
                "27 ותק",
                textAlign: TextAlign.center,
                style: GoogleFonts.heebo(textStyle: TextStyle(fontSize: 14, color: ColorsApp.white, fontWeight: FontWeight.w700)),
              ),
            ],
          ),
        ),
        Positioned(
          right: 8,
          child: Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              gradient: LinearGradient(
                  begin: Alignment.centerRight,
                  end: Alignment.centerLeft,
                  colors: [
                    ColorsApp.gradientStart,
                    ColorsApp.gradientCentral,
                    ColorsApp.gradientEnd,
                  ]),
              boxShadow: [
                BoxShadow(
                  color: ColorsApp.gradientEnd2.withAlpha(150),
                  blurRadius: 10,
                  spreadRadius: 1,
                  offset: Offset(-1, 5),
                ),
              ],
            ),
            child: isHaveCard ? Container(
              margin: EdgeInsets.all(2),
                padding: EdgeInsets.all(1),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(width: 1, color: ColorsApp.white),
                ),
                child: Image.asset("assets/images/user.png", fit: BoxFit.fill,)
            ) : SizedBox(),
          ),
        ),
        !isHaveCard ? Positioned(
          right: 30,
          top: 30,
          child: Image.asset(
            "assets/images/user_card.png",
            scale: 1.1,
          ),
        ) : Container(),
      ],
    );
  }
}