import 'dart:ui';

import 'package:flutter/material.dart';


@immutable
class AppTokens extends ThemeExtension<AppTokens>{
  const AppTokens({
    required this.success,
    required this.onSuccess,
    required this.warning,
    required this.onWarning,
    required this.info,
    required this.radiusSm,
    required this.radiusMd,
    required this.radiusLg,
    required this.durationFast,
    required this.durationNormal,
  });

  final Color success;
  final Color onSuccess;
  final Color warning;
  final Color onWarning;
  final Color info;

  final double radiusSm;
  final double radiusMd;
  final double radiusLg;

  final Duration durationFast;
  final Duration durationNormal;

  static const AppTokens light = AppTokens(
    success: Color(0xFF1B6B3A),
    onSuccess: Color(0xFFFFFFFF),
    warning: Color(0xFF8A5A00),
    onWarning: Color(0xFFFFFFFF),
    info: Color(0xFF17557E),
    radiusSm: 8,
    radiusMd: 12,
    radiusLg: 20,
    durationFast: Duration(milliseconds: 150),
    durationNormal: Duration(milliseconds: 250),
  );

  static const AppTokens dark = AppTokens(
    success: Color(0xFF7CD9A0),
    onSuccess: Color(0xFF00391B),
    warning: Color(0xFFF5BF66),
    onWarning: Color(0xFF3F2E00),
    info: Color(0xFF9BCBF0),
    radiusSm: 8,
    radiusMd: 12,
    radiusLg: 20,
    durationFast: Duration(milliseconds: 150),
    durationNormal: Duration(milliseconds: 250),
  );

  @override
  AppTokens copyWith({
    Color? success,
    Color? onSuccess,
    Color? warning,
    Color? onWarning,
    Color? info,
    double? radiusSm,
    double? radiusMd,
    double? radiusLg,
    Duration? durationFast,
    Duration? durationNormal,
  }) {
    return AppTokens(
      success: success ?? this.success,
      onSuccess: onSuccess ?? this.onSuccess,
      warning: warning ?? this.warning,
      onWarning: onWarning ?? this.onWarning,
      info: info ?? this.info,
      radiusSm: radiusSm ?? this.radiusSm,
      radiusMd: radiusMd ?? this.radiusMd,
      radiusLg: radiusLg ?? this.radiusLg,
      durationFast: durationFast ?? this.durationFast,
      durationNormal: durationNormal ?? this.durationNormal,
    );
  }

  @override
  AppTokens lerp(covariant AppTokens? other, double t) {
    if (other == null) return this;
    return AppTokens(
      success: Color.lerp(success, other.success, t)!,
      onSuccess: Color.lerp(onSuccess, other.onSuccess, t)!,
      warning: Color.lerp(warning, other.warning, t)!,
      onWarning: Color.lerp(onWarning, other.onWarning, t)!,
      info: Color.lerp(info, other.info, t)!,
      radiusSm: lerpDouble(radiusSm, other.radiusSm, t)!,
      radiusMd: lerpDouble(radiusMd, other.radiusMd, t)!,
      radiusLg: lerpDouble(radiusLg, other.radiusLg, t)!,
      durationFast: t < 0.5 ? durationFast : other.durationFast,
      durationNormal: t < 0.5 ? durationNormal : other.durationNormal,
    );
  }
}
extension AppTokenX on BuildContext{
  AppTokens get tokens => Theme.of(this).extension<AppTokens>()!;
  ColorScheme get colors => Theme.of(this).colorScheme;
  TextTheme get text => Theme.of(this).textTheme;
}