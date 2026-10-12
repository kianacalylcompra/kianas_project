import 'package:flutter/foundation.dart';

class AuthState {
  static final ValueNotifier<bool> isLoggedIn = ValueNotifier<bool>(false);

  static void login() {
    isLoggedIn.value = true;
  }

  static void logout() {
    isLoggedIn.value = false;
  }
}
