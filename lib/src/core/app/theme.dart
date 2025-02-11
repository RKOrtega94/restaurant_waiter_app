import 'package:flutter/material.dart';

/// Light Theme
ThemeData lightTheme() => ThemeData(
      inputDecorationTheme: InputDecorationTheme(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(
            color: Colors.grey,
          ),
        ),
      ),
    );

/// Dark Theme
ThemeData darkTheme() => ThemeData.dark();
