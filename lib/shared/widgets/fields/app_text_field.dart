import 'package:flutter/material.dart';

/// App Text Field
///
/// A custom text field widget.
///
/// - [enabled] is a flag to enable or disable the text field.
/// - [controller] is the controller for the text field.
/// - [labelText] is the label text for the text field.
/// - [hintText] is the hint text for the text field.
///
/// Example:
/// ```dart
/// AppTextField(
///   enabled: true,
///   controller: TextEditingController(),
///   labelText: 'Label',
///   hintText: 'Hint',
/// );
/// ```
class AppTextField extends StatelessWidget {
  const AppTextField({
    this.enabled = true,
    this.controller,
    this.labelText,
    this.hintText,
    super.key,
  });

  final bool enabled;
  final TextEditingController? controller;
  final String? labelText;
  final String? hintText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      enabled: enabled,
      decoration: InputDecoration(
        labelText: labelText,
        hintText: hintText,
      ),
    );
  }
}
