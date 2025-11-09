import 'package:flutter/material.dart';
import 'package:gym_app_ui/home_screen.dart';

import 'theme/app_theme.dart';

void main() {
  runApp(GymAppUi());
}

class GymAppUi extends StatelessWidget {
  const GymAppUi({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.system,
      home: HomeScreen(),
    );
  }
}

