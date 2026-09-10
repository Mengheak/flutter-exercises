import 'package:flutter/material.dart';
import 'package:ui_design_lab/design/app_tokens.dart';
import 'package:ui_design_lab/design/spacing.dart';

class DashboardScreen extends StatelessWidget{
  const DashboardScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.surface,
      appBar: AppBar(title: const Text('ផ្ទាំងគ្រប់គ្រង')),
      body: ListView(
        padding: AppSpacing.page,
        children: [
          _Surface(
            level: context.colors.surfaceContainer,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('ការលក់ខែនេះ', style: context.text.titleMedium),
                const Gap(AppSpacing.sm),
                Text('៤,២៥០,០០០ ៛', style: context.text.headlineMedium),
                const Gap(AppSpacing.md),
                _Surface(
                  level: context.colors.surfaceContainerHigh,
                  child: Row(
                    children: [
                      Icon(Icons.trending_up, color: context.tokens.success),
                      const Gap.horizontal(AppSpacing.xs),
                      Expanded(
                        child: Text('កើនឡើង ១២% ធៀបនឹងខែមុន',
                            style: context.text.bodyMedium),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _Surface extends StatelessWidget {
  const _Surface({required this.level, required this.child});

  final Color level;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: AppSpacing.card,
      decoration: BoxDecoration(
        color: level,
        borderRadius: BorderRadius.circular(context.tokens.radiusMd),
      ),
      child: child,
    );
  }
}