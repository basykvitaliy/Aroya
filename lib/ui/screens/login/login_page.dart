
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

    ref.listen<AppState>(loginProvider, (_, state) {
      if (state == AppState.success) {

      } else if (state == AppState.error) {
        const Text("Incorrect login or password");
      }else if (state == AppState.loading) {
        const CircularProgressIndicator();
      }else if (state == AppState.login) {

      }
    });

    return Scaffold(
      appBar: AppBar(title: Text('Login'), automaticallyImplyLeading: false,),
      body: Form(
        key: controller.formKey,
        child: Center(

        ),
      ),
    );
  }
}
