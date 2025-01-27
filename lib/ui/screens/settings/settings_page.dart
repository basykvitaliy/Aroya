import 'package:aroya/di/providers_di.dart';
import 'package:aroya/ui/style/colors.dart';
import 'package:aroya/ui/widgets/app_bar_widget.dart';
import 'package:aroya/ui/widgets/category_item_widget.dart';
import 'package:aroya/ui/widgets/users_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';

import '../../../helpers/constants.dart';

class SettingsPage extends ConsumerWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final settingsState = ref.watch(settingsProvider);
    final controller = ref.read(settingsProvider.notifier);

    return Scaffold(
      backgroundColor: ColorsApp.background,
      body: Builder(builder: (context) {
        switch (settingsState) {
          case AppState.loading:
            // TODO: Handle this case.
            throw UnimplementedError();
          case AppState.success:
            return Stack(children: [
              SizedBox(
                child: Image.asset(
                  "assets/images/bg.png",
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 60),
                  AppBarWidget(
                    leadingIcon: "assets/icons/notification.svg",
                    trailingIcon: "assets/icons/menu.svg",
                    onLeadingIconTap: () {},
                    onTrailingIconTap: () {},
                  ),
                  SizedBox(height: 60),
                  UsersCardWidget(isHaveCard: true),

                  Container(
                    margin: EdgeInsets.symmetric(vertical: 18),
                    child: Text(
                      "פעולות בחשבון",
                      style: TextStyle(
                        color: ColorsApp.mainDarkBlue,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Expanded(
                    child: ListView.builder(
                      itemCount: 10,
                      shrinkWrap: false,
                      padding: EdgeInsets.zero,
                      scrollDirection: Axis.vertical,
                      physics: BouncingScrollPhysics(),
                      itemBuilder: (context, index) {
                        return Container(
                            margin: EdgeInsets.symmetric(vertical: 6),
                            child: CategoryItemWidget(
                                title: "כללי משיכה",
                                onTap: () {}
                            ),
                        );
                      },
                    ),
                  )
                ],
              ),
            ]);
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
      }),
    );
  }
}
