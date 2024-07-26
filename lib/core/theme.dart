import 'package:flutter/material.dart';
import 'package:haulway_mobile/core/constants/app_colors.dart';

class ThemeDataClass {
  static ThemeData darkTheme() {
    return ThemeData.dark(useMaterial3: false).copyWith(
      colorScheme: const ColorScheme(
        brightness: Brightness.dark,
        primary: AppColors.kPrimary,
        onPrimary: Colors.white,
        secondary: AppColors.kSecondary,
        onSecondary: Colors.white,
        error: Colors.red,
        onError: Colors.red,
        surface: Colors.white,
        onSurface: Colors.white,
      ),
      scaffoldBackgroundColor: AppColors.kSecondary,
    );
  }
}
