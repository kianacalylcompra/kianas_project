import 'package:flutter/material.dart';

import 'constants/app_constants.dart';
import 'services/auth_state.dart';
import 'screens/home_screen.dart';
import 'screens/login_screen.dart';
import 'screens/register_screen.dart';
import 'screens/dashboard_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  Route<dynamic> _onGenerateRoute(RouteSettings settings) {
    String routeName = settings.name ?? '/';
    Widget page;

    switch (routeName) {
      case '/login':
        page = const LoginScreen();
        break;
      case '/register':
        page = const RegisterScreen();
        break;
      case '/dashboard':
        if (AuthState.isLoggedIn.value) {
          page = const DashboardScreen();
        } else {
          routeName = '/login';
          page = const LoginScreen();
        }
        break;
      default:
        routeName = '/';
        page = const HomeScreen();
    }

    return MaterialPageRoute(
      settings: RouteSettings(name: routeName),
      builder: (context) => page,
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppConstants.appName,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: AppConstants.primaryColor),
        useMaterial3: true,
      ),
      initialRoute: '/',
      onGenerateRoute: _onGenerateRoute,
    );
  }
}
