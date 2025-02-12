import 'package:flutter/material.dart';

/// App Dropdown Button
///
/// A custom dropdown button widget.
class AppDropdownButton<T> extends StatelessWidget {
  const AppDropdownButton({
    this.items = const [],
    this.value,
    required this.label,
    this.onChanged,
    this.icon,
    super.key,
  });

  final List<T> items;
  final T? value;
  final Widget Function(T) label;
  final void Function(T)? onChanged;
  final Widget? icon;

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      icon: icon,
      onSelected: onChanged,
      itemBuilder: (context) => items.map(_buildItem).toList(),
      initialValue: value,
    );
  }

  PopupMenuEntry<T> _buildItem(T item) => PopupMenuItem(
        value: item,
        child: label(item),
      );
}
