import 'package:flutter/material.dart';

abstract class AppTypography {
  static const String _family = "Barlow";
  static const String _fallbackFamily = "Battambang";
  static const double _khmerHeight = 1.7;

  //for button label
  static const double _khmerHeightTight = 1.4;

  static TextTheme build(ColorScheme scheme){
    return TextTheme(
      headlineLarge: _style(32, FontWeight.w700, _khmerHeightTight),
      headlineMedium: _style(28, FontWeight.w700, _khmerHeightTight),
      titleLarge: _style(22, FontWeight.w700, _khmerHeightTight),
      titleMedium: _style(16, FontWeight.w700, _khmerHeightTight),
      bodyLarge: _style(16, FontWeight.w400, _khmerHeight),
      bodyMedium: _style(14, FontWeight.w400, _khmerHeight),
      labelLarge: _style(14, FontWeight.w700, _khmerHeightTight),
      labelSmall: _style(12, FontWeight.w400, _khmerHeightTight),
    ).apply(
      bodyColor: scheme.onSurface,
      displayColor: scheme.onSurface,
    );
  }
  static TextStyle _style(double size, FontWeight weight, double height) {
    return TextStyle(
      fontFamily: _family,
      fontFamilyFallback: const [_fallbackFamily],
      fontSize: size,
      fontWeight: weight,
      height: height,
      leadingDistribution: TextLeadingDistribution.even,
    );  }
}