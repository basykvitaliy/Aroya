import 'package:aroya/helpers/strings.dart';
import 'package:aroya/ui/style/colors.dart';
import 'package:aroya/ui/style/fonts.dart';
import 'package:aroya/ui/widgets/button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:local_auth/local_auth.dart';

//@RoutePage()
class BiometricPage extends StatefulWidget {
  const BiometricPage({super.key});

  @override
  State<BiometricPage> createState() => _BiometricPageState();
}

class _BiometricPageState extends State<BiometricPage> {
  final LocalAuthentication _localAuthentication = LocalAuthentication();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsApp.mainBlue,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        toolbarHeight: 100.h,
        title: SvgPicture.asset('assets/images/logo_white.svg'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Text(loginWithFaceId, style: FontsStyleApp.white16),
            InkWell(
              onTap: _tapEnter,
              child: Center(
                child: Image.asset("assets/images/face_id_green.png"),
              ),
            ),
            Text(forYouConvenience, style: FontsStyleApp.white16),
            Text(orLoginUsingSetPassword, style: FontsStyleApp.grey14),
            InkWell(
              onTap: () {
                Navigator.maybePop(context);
              },
              child: Center(
                child: Text(skip, style: FontsStyleApp.blue16),
              ),
            ),
            ButtonApp(
              height: 54.h,
              width: 327.w,
              bgColor: ColorsApp.lightGreen,
              textButton: continueText,
              isChangeBtn: false,
              onTap: () {},
              icon: SizedBox.shrink(),
            )
          ],
        ),
      ),
    );
  }

  _tapEnter() async {
    bool canCheckAuth = await _localAuthentication.canCheckBiometrics;

    if (canCheckAuth) {
      bool didAuthed = await _localAuthentication.authenticate(
        localizedReason: "Please authenticate to enter the application",
      );
      if (didAuthed) {
        debugPrint("-----Did AUTHED");
        // AutoRouter.of(context).push(StartRoute());
      } else {
        debugPrint("-----Cannot Enter");
      }
    } else {
      debugPrint("-----Did AUTHED");
      // AutoRouter.of(context).push(StartRoute());
    }
  }
}
