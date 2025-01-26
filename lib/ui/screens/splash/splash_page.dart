
import 'package:aroya/di/providers_di.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../helpers/constants.dart';

class SplashPage extends ConsumerWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final splashState = ref.watch(splashProvider);
    final controller = ref.read(splashProvider.notifier);


    return Scaffold(
      body: Builder(
          builder: (context){
            switch (splashState) {
              case AppState.loading:
              // TODO: Handle this case.
                throw UnimplementedError();
              case AppState.success:
                return const Center(child: Text('Splash', style: TextStyle(color: Colors.black)));
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
