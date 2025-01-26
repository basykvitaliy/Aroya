
import 'package:aroya/di/providers_di.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../helpers/constants.dart';

class LoginPage extends ConsumerWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
