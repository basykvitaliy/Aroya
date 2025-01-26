import 'package:aroya/di/providers_di.dart';
import 'package:aroya/ui/style/colors.dart';
import 'package:aroya/ui/widgets/app_bar_widget.dart';
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
      backgroundColor: ColorsApp.mainDarkBlue,
      body: Builder(builder: (context) {
        switch (settingsState) {
          case AppState.loading:
            // TODO: Handle this case.
            throw UnimplementedError();
          case AppState.success:
            return Center(
              child: AppBarWidget(
                leadingIcon: "assets/icons/notification.svg",
                trailingIcon: "assets/icons/menu.svg",
                onLeadingIconTap: () {},
                onTrailingIconTap: () {},
              ),
            );
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





