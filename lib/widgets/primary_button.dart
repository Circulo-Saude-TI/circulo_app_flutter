import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;
  final IconData? icon;
  const PrimaryButton({super.key, required this.text, this.onPressed, this.icon});

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    return ElevatedButton.icon(
      onPressed: onPressed,
      icon: Icon(icon ?? Icons.chevron_right_rounded),
      label: Text(text),
      style: ElevatedButton.styleFrom(
        backgroundColor: scheme.primary,
        foregroundColor: Colors.white,
      ),
    );
  }
}