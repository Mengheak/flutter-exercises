import 'package:flutter/material.dart';
import 'package:ui_design_lab/design/app_tokens.dart';
import 'package:ui_design_lab/design/spacing.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({super.key});
  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  int quantity = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            _ProductImage(),
            Padding(
              padding: AppSpacing.card,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const _ProductHeader(),
                  const Gap(AppSpacing.md),
                  const _ProductDescription(),
                  const Gap(AppSpacing.lg),
                  QuantityStepper(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _ProductImage extends StatelessWidget {
  const _ProductImage();
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 3 / 2,
      child: Image.network(
        'https://picsum.photos/600/400',
        fit: BoxFit.cover,
        loadingBuilder: (context, child, progress) => progress == null
            ? child
            : ColoredBox(color: context.colors.surfaceContainer),
        errorBuilder: (context, _, __) => ColoredBox(
          color: context.colors.surfaceContainer,
          child: Center(
            child: Icon(
              Icons.image_not_supported_outlined,
              color: context.colors.onSurfaceVariant,
            ),
          ),
        ),
      ),
    );
  }
}

class _ProductDescription extends StatelessWidget {
  const _ProductDescription();
  @override
  Widget build(BuildContext context) {
    return Text(
      'គ្រាប់កាហ្វេ Arabica ដាំដុះនៅខេត្តមណ្ឌលគិរី លើកម្ពស់ ៨០០ ម៉ែត្រ។',
      style: context.text.bodyMedium?.copyWith(
        color: context.colors.onSurfaceVariant,
      ),
    );
  }
}

class _ProductHeader extends StatelessWidget {
  const _ProductHeader();
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('កាហ្វេមណ្ឌលគិរី', style: context.text.headlineMedium),
        const Gap(AppSpacing.xxs),
        Text(
          '៨,០០០ ៛',
          style: context.text.titleLarge?.copyWith(
            color: context.colors.primary,
          ),
        ),
      ],
    );
  }
}

class QuantityStepper extends StatefulWidget {
  const QuantityStepper({super.key, this.min = 1, this.max = 99});
  final int min;
  final int max;
  @override
  State<StatefulWidget> createState() {
    return _QuantityStepperState();
  }
}

class _QuantityStepperState extends State<QuantityStepper> {
  int _quantity = 1;
  bool get _canDecrease => _quantity > widget.min;
  bool get _canIncrease => _quantity < widget.max;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        IconButton.outlined(
          onPressed: _canDecrease ? () => setState(() => _quantity--) : null,
          icon: Icon(Icons.remove),
          tooltip: "Decrease",
        ),
        SizedBox(
          width: AppSpacing.xxl,
          child: Text(
            '$_quantity',
            textAlign: TextAlign.center,
            style: context.text.titleMedium,
          ),
        ),
        IconButton.outlined(
          onPressed: _canIncrease ? () => setState(() => _quantity++) : null,
          icon: const Icon(Icons.add),
          tooltip: 'Increase',
        ),
      ],
    );
  }
}
