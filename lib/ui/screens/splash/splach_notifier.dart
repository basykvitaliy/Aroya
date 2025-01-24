
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../helpers/constants.dart';

class SplashNotifier extends StateNotifier<AppState> {
  SplashNotifier(this.ref) : super(AppState.success);

  final Ref ref;



}
