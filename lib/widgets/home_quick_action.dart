import 'package:flutter/material.dart';

class HomeQuickAction extends StatelessWidget {
  final String title;
  final IconData icon;
  final VoidCallback onTap;
  const HomeQuickAction({super.key, required this.title, required this.icon, required this.onTap});

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(16),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: cs.secondary.withOpacity(0.12),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 28, color: cs.secondary),
            const SizedBox(height: 8),
            Text(title, textAlign: TextAlign.center, style: const TextStyle(fontWeight: FontWeight.w600)),
          ],
        ),
      ),
    );
  }
}