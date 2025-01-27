
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../helpers/constants.dart';

class BottomMenuNotifier extends StateNotifier<AppState> {
  BottomMenuNotifier(this.ref) : super(AppState.success);

  final Ref ref;

  final selectedIndex = StateProvider<int>((ref) => 1);

}
