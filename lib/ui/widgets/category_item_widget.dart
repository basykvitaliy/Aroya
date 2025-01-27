
import 'package:aroya/ui/style/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoryItemWidget extends StatelessWidget {
  CategoryItemWidget({
    super.key,
    required this.title,
    this.height = 60,
    required this.onTap,
  });

  String title;
  double height;
  VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
        child: Stack(
          alignment: Alignment.centerRight,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: height,
              decoration: BoxDecoration(
                border: Border.all(width: 1, color: ColorsApp.oceanBlue150),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(height <= 50 ? 12 : 16),
                  topLeft: Radius.circular(height <= 50 ? 12 : 16),
                  bottomRight: Radius.circular(0),
                  topRight: Radius.circular(0),
                ),
                color: ColorsApp.white,
                boxShadow: [
                  BoxShadow(
                    color: ColorsApp.oceanBlue200,
                    blurRadius: 5,
                    offset: Offset(0, 0),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: height,
              child: Image.asset(
                "assets/images/item_rectangle.png",
              ),
            ),
            Positioned(
              left: 0,
              right: 0,
              child: Text(
                title,
                textAlign: TextAlign.center,
                style: GoogleFonts.heebo(textStyle: TextStyle(fontSize: 16, color: ColorsApp.mainDarkBlue, fontWeight: FontWeight.w700)),
              ),
            )
          ],
        ),
      ),
    );
  }
}