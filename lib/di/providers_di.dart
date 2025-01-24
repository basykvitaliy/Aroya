
import 'package:aroya/helpers/constants.dart';
import 'package:aroya/helpers/session.dart';
import 'package:aroya/ui/screens/bottom_menu/bottom_menu_notifier.dart';
import 'package:aroya/ui/screens/dashboard/dashboard_notifier.dart';
import 'package:aroya/ui/screens/home/home_notifier.dart';
import 'package:aroya/ui/screens/login/login_notifier.dart';
import 'package:aroya/ui/screens/settings/settigns_notifier.dart';
import 'package:aroya/ui/screens/splash/splach_notifier.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final sessionProvider = Provider<Session>((ref) {
  return Session();
});

final loginProvider = StateNotifierProvider<LoginNotifier, AppState>((Ref ref) {
  return LoginNotifier(ref);
});

final splashProvider = StateNotifierProvider<SplashNotifier, AppState>((Ref ref) {
  return SplashNotifier(ref);
});

final homeProvider = StateNotifierProvider<HomeNotifier, AppState>((Ref ref) {
  return HomeNotifier(ref);
});

final settingsProvider = StateNotifierProvider<SettingsNotifier, AppState>((Ref ref) {
  return SettingsNotifier(ref);
});

final dashboardProvider = StateNotifierProvider<DashboardNotifier, AppState>((Ref ref) {
  return DashboardNotifier(ref);
});

final bottomMenuProvider = StateNotifierProvider<BottomMenuNotifier, AppState>((Ref ref) {
  return BottomMenuNotifier(ref);
});

