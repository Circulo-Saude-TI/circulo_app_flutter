import 'package:flutter/material.dart';
import 'theme/app_theme.dart';
import 'routes/app_routes.dart';

class CirculoSaudeApp extends StatelessWidget {
  const CirculoSaudeApp({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = buildAppTheme();
    return MaterialApp(
      title: 'Círculo Saúde',
      debugShowCheckedModeBanner: false,
      theme: theme,
      initialRoute: AppRoutes.splash,
      routes: AppRoutes.routes,
    );
  }
}