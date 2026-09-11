import 'package:flutter/material.dart';
import 'package:ui_design_lab/design/spacing.dart';

class OverflowFixDemoScreen extends StatefulWidget {
  const OverflowFixDemoScreen({super.key});

  @override
  State<OverflowFixDemoScreen> createState() => _OverflowFixDemoScreenState();
}

class _OverflowFixDemoScreenState extends State<OverflowFixDemoScreen> {
  // Flag សម្រាប់បើក/បិទការជួសជុលដើម្បីប្រៀបធៀប
  bool isFixed = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Overflow Fix Demo'),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.info_outline)),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(AppSpacing.md),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Gap.horizontal(AppSpacing.xs),
            Expanded(
              child: Text(
                'ការបញ្ជាទិញរបស់អ្នកនឹងត្រូវដឹកជញ្ជូនក្នុងរយៈពេល ៣ ថ្ងៃធ្វើការ akjhfdkjsahfdiushfiudshfijsdhifudshaiuhfdsiuhasdiuhdsufhds',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
