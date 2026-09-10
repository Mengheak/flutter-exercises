import 'package:flutter/material.dart';
import 'package:ui_design_lab/design/app_tokens.dart';
import 'package:ui_design_lab/design/app_typography.dart';

abstract final class AppTheme {
  static const Color _seed = Color(0xFF2D6A4F);
  static ThemeData light() => _build(Brightness.light);
  static ThemeData dark() => _build(Brightness.dark);

  static ThemeData _build(Brightness brightness) {
    final scheme = ColorScheme.fromSeed(
      seedColor: _seed,
      brightness: brightness,

    );
    return ThemeData(
      colorScheme: scheme,
      useMaterial3: true,
      scaffoldBackgroundColor: scheme.surface,
      textTheme: AppTypography.build(scheme),
      extensions: [
       brightness == Brightness.light ? AppTokens.light : AppTokens.dark,
      ],
    );
  }
}
