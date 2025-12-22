import 'package:blog_app/core/theme/app_pallete.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static OutlineInputBorder _border([Color color = AppPallete.borderColor]) =>
      OutlineInputBorder(
        borderSide: BorderSide(color: color, width: 3),
        borderRadius: BorderRadius.circular(10),
      );

  static final darkTheme = ThemeData.dark().copyWith(
    appBarTheme: const AppBarTheme(backgroundColor: AppPallete.borderColor),
    scaffoldBackgroundColor: AppPallete.backgroundColor,
    inputDecorationTheme: InputDecorationTheme(
      contentPadding: EdgeInsets.all(27),
      enabledBorder: _border(AppPallete.borderColor),
      focusedBorder: _border(AppPallete.errorColor),
    ),
  );
}
