
import 'package:aroya/di/providers_di.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../helpers/constants.dart';

class SettingsPage extends ConsumerWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final settingsState = ref.watch(settingsProvider);
    final controller = ref.read(settingsProvider.notifier);


    return Scaffold(
      body: Builder(
          builder: (context){
            switch (settingsState) {
              case AppState.loading:
              // TODO: Handle this case.
                throw UnimplementedError();
              case AppState.success:
                return const Center(child: Text('Settings', style: TextStyle(color: Colors.black)));
              case AppState.error:
                // TODO: Handle this case.
                throw UnimplementedError();
              case AppState.errorFirebase:
                // TODO: Handle this case.
                throw UnimplementedError();
              case AppState.uploadImages:
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
