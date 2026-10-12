import 'package:flutter/material.dart';

import '../constants/app_constants.dart';
import '../services/auth_state.dart';

class AppShell extends StatelessWidget {
  final String title;
  final Widget body;

  const AppShell({super.key, required this.title, required this.body});

  Widget _menuButton(BuildContext context, String label, String route) {
    return TextButton(
      onPressed: () => Navigator.pushReplacementNamed(context, route),
      child: Text(label, style: const TextStyle(color: Colors.white)),
    );
  }

  Widget _logoutButton(BuildContext context) {
    return TextButton.icon(
      onPressed: () {
        AuthState.logout();
        Navigator.pushNamedAndRemoveUntil(context, '/login', (route) => false);
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('You have been logged out.')),
        );
      },
      icon: const Icon(Icons.logout, color: Colors.white, size: 18),
      label: const Text('Logout', style: TextStyle(color: Colors.white)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<bool>(
      valueListenable: AuthState.isLoggedIn,
      builder: (context, loggedIn, _) {
        return Scaffold(
          appBar: AppBar(
            title: Text(title),
            backgroundColor: AppConstants.primaryColor,
            foregroundColor: Colors.white,
            actions: [
              _menuButton(context, 'Home', '/'),
              if (loggedIn) ...[
                _menuButton(context, 'Dashboard', '/dashboard'),
                _logoutButton(context),
              ] else ...[
                _menuButton(context, 'Login', '/login'),
                _menuButton(context, 'Register', '/register'),
              ],
              const SizedBox(width: 12),
            ],
          ),
          body: body,
        );
      },
    );
  }
}
