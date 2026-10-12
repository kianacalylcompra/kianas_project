import 'package:flutter/material.dart';

import '../widgets/app_shell.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  Widget _card(String title) {
    return Card(
      child: SizedBox(
        width: 200,
        height: 120,
        child: Center(child: Text(title, style: const TextStyle(fontSize: 18))),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return AppShell(
      title: 'Dashboard',
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Wrap(
          spacing: 16,
          runSpacing: 16,
          children: [
            _card('Module 1 (placeholder)'),
            _card('Module 2 (placeholder)'),
            _card('Module 3 (placeholder)'),
          ],
        ),
      ),
    );
  }
}
