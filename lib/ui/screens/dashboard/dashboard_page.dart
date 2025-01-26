
import 'package:aroya/di/providers_di.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../helpers/constants.dart';

class DashboardPage extends ConsumerWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final dashboardState = ref.watch(dashboardProvider);
    final controller = ref.read(dashboardProvider.notifier);


    return Scaffold(
      body: Builder(
          builder: (context){
            switch (dashboardState) {
              case AppState.loading:
              // TODO: Handle this case.
                throw UnimplementedError();
              case AppState.success:
                return const Center(child: Text('Dashboard', style: TextStyle(color: Colors.black)));
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
