import 'package:flutter/material.dart';
import 'package:ui_design_lab/design/spacing.dart';

class ColorRolesScreen extends StatelessWidget {
  const ColorRolesScreen({super.key, required this.onToggleBrightness});

  final VoidCallback onToggleBrightness;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;

    final roles = <String, (Color, Color)>{
      'primary': (scheme.primary, scheme.onPrimary),
      'primaryContainer': (scheme.primaryContainer, scheme.onPrimaryContainer),
      'secondary': (scheme.secondary, scheme.onSecondary),
      'secondaryContainer': (
        scheme.secondaryContainer,
        scheme.onSecondaryContainer,
      ),
      'tertiary': (scheme.tertiary, scheme.onTertiary),
      'error': (scheme.error, scheme.onError),
      'errorContainer': (scheme.errorContainer, scheme.onErrorContainer),
      'surface': (scheme.surface, scheme.onSurface),
      'surfaceContainer': (scheme.surfaceContainer, scheme.onSurface),
      'surfaceContainerHighest': (
        scheme.surfaceContainerHighest,
        scheme.onSurfaceVariant,
      ),
      'inverseSurface': (scheme.inverseSurface, scheme.onInverseSurface),
    };

    return Scaffold(
      appBar: AppBar(
        title: const Text('ស្រ្តីខ្មែរជាអ្នកគ្រប់គ្រងគ្រួសារ'),
        actions: [
          IconButton(
            onPressed: onToggleBrightness,
            icon: const Icon(Icons.brightness_6_outlined),
            tooltip: 'ប្តូររវាងភ្លឺ និងងងឹត',
          ),
        ],
      ),
      body: ListView.separated(
        padding: AppSpacing.page,
        itemCount: roles.length,
        separatorBuilder: (_, __) => const Gap(AppSpacing.xs),
        itemBuilder: (context, index) {
          final entry = roles.entries.elementAt(index);
          final (background, foreground) = entry.value;
          return Container(
            padding: AppSpacing.card,
            decoration: BoxDecoration(
              color: background,
              borderRadius: BorderRadius.circular(12),
            ),
            child: const Text(
              "Primary",
              style: TextStyle(fontWeight: FontWeight.w400),
            ),
          );
        },
      ),
    );
  }
}
