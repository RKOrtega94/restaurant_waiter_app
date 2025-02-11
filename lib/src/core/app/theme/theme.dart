import 'package:flutter/material.dart';
import 'package:restaurant_waiter_app/src/core/constants/app_sizes.dart';

/// Light Theme
ThemeData lightTheme() => ThemeData(
      useMaterial3: true,
      colorScheme: const ColorScheme.light(),
      inputDecorationTheme: InputDecorationTheme(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppSizes.inputRadius),
          borderSide: const BorderSide(
            color: Colors.grey,
          ),
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          backgroundColor: WidgetStateProperty.all(Colors.blue),
          shape: WidgetStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(AppSizes.inputRadius),
            ),
          ),
          foregroundColor: WidgetStateProperty.all(Colors.white),
          padding: WidgetStateProperty.all(
            const EdgeInsets.symmetric(
              vertical: AppSizes.padding,
              horizontal: AppSizes.padding * 2,
            ),
          ),
        ),
      ),
    );

/// Dark Theme
ThemeData darkTheme() => lightTheme().copyWith(
      colorScheme: const ColorScheme.dark(),
    );
