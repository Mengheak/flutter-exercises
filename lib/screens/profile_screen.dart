import 'package:flutter/material.dart';
import 'package:ui_design_lab/design/spacing.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("My Account")),
      body: SingleChildScrollView(
        padding: AppSpacing.page,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Center(
              child: CircleAvatar(
                radius: AppSpacing.xxl,
                child: Icon(Icons.person, size: AppSpacing.xl),
              ),
            ),
            const Gap(AppSpacing.lg),
            Text(
              "Chheang Mengheak",
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            const Gap(AppSpacing.xxs),
            Text(
              "Vibe Coder",
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const Gap(AppSpacing.lg),
            FilledButton(onPressed: () {}, child: const Text("Edit profile")),
            const Gap(AppSpacing.xs),
            OutlinedButton(onPressed: () {}, child: const Text("Share")),
          ],
        ),
      ),
    );
  }
}
