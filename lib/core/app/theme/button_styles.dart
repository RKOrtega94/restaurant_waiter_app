import 'package:flutter/material.dart';

enum ButtonType {
  primary,
  secondary,
  tertiary,
  danger,
  warning,
  success,
  info,
  light,
  dark,
  link,
  none,
  ghost,
}

class AppButtonStyle {
  static ButtonStyle getStyle(BuildContext context, ButtonType buttonType) {
    Color backgroundColor;
    Color foregroundColor;

    switch (buttonType) {
      case ButtonType.primary:
        backgroundColor = Theme.of(context).primaryColor;
        foregroundColor = Theme.of(context).colorScheme.onPrimary;
        break;
      case ButtonType.secondary:
      case ButtonType.tertiary:
      case ButtonType.danger:
      case ButtonType.warning:
      case ButtonType.success:
      case ButtonType.info:
      case ButtonType.light:
      case ButtonType.dark:
      case ButtonType.link:
        backgroundColor = Colors.transparent;
        foregroundColor = Theme.of(context).colorScheme.onSurface;
        break;
      case ButtonType.none:
        backgroundColor = Colors.transparent;
        foregroundColor = Theme.of(context).colorScheme.onSurface;
        break;
      case ButtonType.ghost:
        backgroundColor = Theme.of(context).brightness == Brightness.light
            ? Colors.white
            : Colors.black;
        foregroundColor = Theme.of(context).colorScheme.onSurface;
        break;
    }

    return ButtonStyle(
      backgroundColor: WidgetStatePropertyAll(backgroundColor),
      foregroundColor: WidgetStateProperty.resolveWith<Color>(
        (Set<WidgetState> states) {
          if (states.contains(WidgetState.disabled)) {
            return Theme.of(context).colorScheme.onSurface.withAlpha(150);
          }
          return foregroundColor;
        },
      ),
    );
  }
}
