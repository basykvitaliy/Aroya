
import 'package:aroya/di/providers_di.dart';
import 'package:aroya/ui/screens/dashboard/dashboard_page.dart';
import 'package:aroya/ui/screens/home/home_page.dart';
import 'package:aroya/ui/screens/settings/settings_page.dart';
import 'package:aroya/ui/style/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';


class BottomMenu extends ConsumerWidget {
  BottomMenu({super.key});


  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final bottomMenuState = ref.watch(bottomMenuProvider);
    final controller = ref.read(bottomMenuProvider.notifier);

    var selectedIndex = ref.watch(controller.selectedIndex);
    final List<Widget> _screens = [
      SettingsPage(),
      HomePage(),
      DashboardPage(),
    ];


    return Scaffold(
      body: IndexedStack(
        index: selectedIndex,
        children: _screens,
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  ref.read(controller.selectedIndex.notifier).state = 2;
                },
                child: Container(
                  padding: EdgeInsets.all(selectedIndex == 2 ? 18 : 12),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: selectedIndex == 2 ? ColorsApp.mainDarkBlue : ColorsApp.oceanBlue150),
                  child: SvgPicture.asset(
                    "assets/icons/dashbord.svg",
                    colorFilter: ColorFilter.mode(selectedIndex == 2
                        ? ColorsApp.greyScale50 : ColorsApp.greyScale800.withAlpha(170), BlendMode.srcIn
                    ),
                  ),
                ),
              ),
              SizedBox(width: 14),
              GestureDetector(
                onTap: () {
                  ref.read(controller.selectedIndex.notifier).state = 1;
                },
                child: Container(
                  padding: EdgeInsets.all(selectedIndex == 1 ? 18 : 12),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: selectedIndex == 1 ? ColorsApp.mainDarkBlue : ColorsApp.oceanBlue150),
                  child: SvgPicture.asset(
                    "assets/icons/home.svg",
                    colorFilter: ColorFilter.mode(selectedIndex == 1
                        ? ColorsApp.greyScale50 : ColorsApp.greyScale800.withAlpha(170), BlendMode.srcIn
                    ),
                  ),
                ),
              ),
              SizedBox(width: 14),
              GestureDetector(
                onTap: () {
                  ref.read(controller.selectedIndex.notifier).state = 0;
                },
                child: Container(
                  padding: EdgeInsets.all(selectedIndex == 0 ? 18 : 12),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: selectedIndex == 0 ? ColorsApp.mainDarkBlue : ColorsApp.oceanBlue150),
                  child: SvgPicture.asset(
                    "assets/icons/settings.svg",
                    colorFilter: ColorFilter.mode(selectedIndex == 0
                        ? ColorsApp.greyScale50 : ColorsApp.greyScale800.withAlpha(170), BlendMode.srcIn
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
