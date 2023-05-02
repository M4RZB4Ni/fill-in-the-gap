import 'package:fill_in_the_gap/app/resources/app_colors.dart';
import 'package:flutter/material.dart';


class AppThemes {
  ThemeData get lightTheme => ThemeData(
        primaryColor: AppColors.primary,
        colorScheme: ColorScheme.fromSwatch().copyWith(
          secondary: AppColors.secondary,
        ),
        disabledColor: AppColors.disabledButton,

        scaffoldBackgroundColor: AppColors.background,
        textTheme: TextTheme(),
        // hintColor: 500.text,
        appBarTheme: const AppBarTheme(backgroundColor: AppColors.background),
      );

  static ThemeData darkTheme = ThemeData.dark();
}
