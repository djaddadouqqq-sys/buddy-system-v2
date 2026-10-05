import 'package:flutter/material.dart';
import 'theme/app_theme.dart';
import 'screens/entry_screen.dart';

void main() {
  runApp(const BuddySystemApp());
}

class BuddySystemApp extends StatelessWidget {
  const BuddySystemApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Buddy System',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.dark,
      initialRoute: '/',
      routes: {
        '/': (context) => const EntryScreen(),
        '/home': (context) => const HomePlaceholder(),
      },
    );
  }
}

class HomePlaceholder extends StatelessWidget {
  const HomePlaceholder({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.darkBg,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.check_circle_outline,
              color: AppColors.sageGreen,
              size: 80,
            ),
            const SizedBox(height: 24),
            const Text(
              'شاشة الدخول نجحت!',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 12),
            Text(
              'الشاشة الرئيسية قيد التطوير',
              style: TextStyle(
                color: AppColors.inkLight.withOpacity(0.8),
                fontSize: 14,
              ),
            ),
            const SizedBox(height: 40),
            ElevatedButton.icon(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: const Icon(Icons.arrow_back),
              label: const Text('العودة'),
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.primaryOrange,
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
