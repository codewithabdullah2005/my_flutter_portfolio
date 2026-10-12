import 'package:flutter/material.dart';
import 'screens/portfolio_screen.dart';
import 'theme/app_theme.dart';

void main() {
  runApp(const PortfolioApp());
}

class PortfolioApp extends StatelessWidget {
  const PortfolioApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Abdullah Tech | Software Developer',
      theme: AppTheme.darkTheme,
      home: const PortfolioScreen(),
    );
  }
}