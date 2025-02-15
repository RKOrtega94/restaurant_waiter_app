import 'package:flutter/material.dart';
import 'package:restaurant_waiter_app/core/constants/app_sizes.dart';

/// Light Theme
ThemeData lightTheme() => ThemeData(
      useMaterial3: true,
      colorScheme: const ColorScheme.light(
        surface: Color(
          0xFFF9F9F9,
        ),
      ),
      appBarTheme: const AppBarTheme(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppSizes.inputRadius),
          borderSide: const BorderSide(
            color: Colors.grey,
          ),
        ),
        filled: true,
        fillColor: Colors.white,
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
    inputDecorationTheme: lightTheme().inputDecorationTheme.copyWith(
          fillColor: Colors.black,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(AppSizes.inputRadius),
            borderSide: const BorderSide(
              color: Colors.grey,
            ),
          ),
        ),
    textTheme: const TextTheme(
      bodyLarge: TextStyle(
        color: Colors.white,
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(Colors.red),
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
    ));
