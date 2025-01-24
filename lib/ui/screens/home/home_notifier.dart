
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../helpers/constants.dart';

class HomeNotifier extends StateNotifier<AppState> {
  HomeNotifier(this.ref) : super(AppState.success);

  final Ref ref;



}
