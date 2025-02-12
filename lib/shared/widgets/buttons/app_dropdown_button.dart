import 'package:flutter/material.dart';

/// App Dropdown Button
///
/// A custom dropdown button widget.
///
/// - [items] is a list of items to be displayed in the dropdown.
/// - [value] is the current value of the dropdown.
/// - [label] is a function that returns a widget to be displayed as the label of the dropdown.
/// - [onChanged] is a function that is called when the dropdown value is changed.
/// - [icon] is the icon to be displayed on the dropdown button.
///
/// Example:
/// ```dart
/// AppDropdownButton<String>(
///  items: ['One', 'Two', 'Three'],
///  value: 'One',
///  label: (item) => Text(item),
///  onChanged: (value) => print(value),
///  icon: Icon(Icons.arrow_drop_down),
/// );
/// ```
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

  /// Build the dropdown item.
  ///
  /// - [item] is the item to be displayed.
  ///
  /// Returns a [PopupMenuItem] widget.
  PopupMenuEntry<T> _buildItem(T item) => PopupMenuItem(
        value: item,
        child: label(item),
      );
}
