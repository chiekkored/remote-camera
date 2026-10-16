import 'package:flutter/material.dart';
import 'package:sideeye/presentation/common/design_system/app_theme.dart';

class RoleButton extends StatelessWidget {
  const RoleButton({
    required this.label,
    required this.description,
    required this.icon,
    required this.onPressed,
    super.key,
  });

  final String label;
  final String description;
  final IconData icon;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      onPressed: onPressed,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: AppSpacing.medium),
        child: Row(
          children: [
            Icon(icon),
            const SizedBox(width: AppSpacing.medium),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    label,
                    style: Theme.of(context).textTheme.titleLarge
                        ?.copyWith(color: Colors.white),
                  ),
                  Text(description),
                ],
              ),
            ),
            const Icon(Icons.chevron_right),
          ],
        ),
      ),
    );
  }
}
