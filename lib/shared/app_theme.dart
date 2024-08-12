import 'package:flutter/material.dart';
import 'package:pratik_portfolio/shared/app_responsiveness.dart';

// AppTheme class to define the theme of the app
// This class will be used to define the theme of the app
// It will be used to set the text theme and button theme of the app
// It will also be used to set the font size of the text

class AppTheme {
  static ThemeData theme(BuildContext context) {
    final responsiveNess = AppResponsiveness(context: context);

    return ThemeData(
      textTheme: TextTheme(
        headlineLarge: TextStyle(
          fontSize: responsiveNess.headlineLargeFontSize(),
          fontWeight: FontWeight.bold,
        ),
        headlineMedium: TextStyle(
          fontSize: responsiveNess.headlineMediumFontSize(),
          fontWeight: FontWeight.bold,
        ),
        headlineSmall: TextStyle(
          fontSize: responsiveNess.headlineSmallFontSize(),
          fontWeight: FontWeight.bold,
        ),
        titleLarge: TextStyle(
          fontSize: responsiveNess.titleLarge(),
          fontWeight: FontWeight.bold,
        ),
        bodyLarge: TextStyle(
          fontSize: responsiveNess.bodyLargeFontSize(),
        ),
        bodyMedium: TextStyle(
          fontSize: responsiveNess.headlineSmallFontSize(),
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          padding: WidgetStateProperty.all(
            const EdgeInsets.symmetric(
              horizontal: 50,
              vertical: 20,
            ),
          ),
          textStyle: WidgetStateProperty.all(
            TextStyle(
              fontSize: responsiveNess.bodyLargeFontSize(),
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
