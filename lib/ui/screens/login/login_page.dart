
import 'package:aroya/di/providers_di.dart';
import 'package:aroya/helpers/strings.dart';
import 'package:aroya/ui/screens/login/register_phone_page.dart';
import 'package:aroya/ui/screens/login/widgets/app_bar.dart';
import 'package:aroya/ui/style/colors.dart';
import 'package:aroya/ui/widgets/background_painter.dart';
import 'package:aroya/ui/widgets/button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../helpers/constants.dart';

class LoginPage extends ConsumerWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return //RegisterPhonePage();

        Scaffold(
      appBar: const AroyaAppBar(isBack: false,),
      body: Stack(
          fit: StackFit.expand,
          children: [
        BackGroundPaint(),
        Padding(
          padding: EdgeInsets.only(top: 60.h, left: 10.w, right: 10.w),
          child: Align(
            alignment: Alignment.topCenter,
            child: Column(
              children: [
                Image.asset('assets/images/key_lock.png'),
                SizedBox(
                  height: 60.h,
                ),
                Flexible(
                  child: ButtonApp(
                    textButton: login,
                    isChangeBtn: true,
                    onTap: () {},
                    bgColor: ColorsApp.oceanBlue200,
                    width: MediaQuery.of(context).size.width / 1.2,
                    height: 60.h,
                    isDisabledBtn: false,
                    icon: SvgPicture.asset("assets/icons/login.svg"),
                  ),
                ),
                SizedBox(
                  height: 24.h,
                ),
                Flexible(
                  child: ButtonApp(
                    textButton: singUp,
                    isChangeBtn: true,
                    onTap: () {
                      //TODO this temo solution
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return RegisterPhonePage();
                      }));
                    },
                    bgColor: ColorsApp.lightGreen,
                    width: MediaQuery.of(context).size.width / 1.2,
                    height: 60,
                    isDisabledBtn: false,
                    icon: SvgPicture.asset("assets/icons/signUp.svg"),
                  ),
                )
              ],
            ),
          ),
        ),
      ]),
    );

    final loginState = ref.watch(loginProvider);
    final controller = ref.read(loginProvider.notifier);


    return Scaffold(
      appBar: AppBar(
        title: Text('Login', style: TextStyle(color: Colors.black)),
        automaticallyImplyLeading: false,
      ),
      body: Builder(
          builder: (context){
            switch (loginState) {
              case AppState.loading:
              // TODO: Handle this case.
                throw UnimplementedError();
              case AppState.success:
                return const Center(child: Text('Login successful!', style: TextStyle(color: Colors.black)));
              case AppState.error:
                // TODO: Handle this case.
                throw UnimplementedError();
              case AppState.login:
                // TODO: Handle this case.
                throw UnimplementedError();
              case AppState.logOut:
                // TODO: Handle this case.
                throw UnimplementedError();
            }
          }
      ),
    );
  }
}
