

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../helpers/constants.dart';



class LoginNotifier extends StateNotifier<AppState> {
  LoginNotifier(this.ref) : super(AppState.initial);

  final Ref ref;

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();


}
