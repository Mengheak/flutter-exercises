import 'package:flutter/material.dart';

enum WindowSize {
  compact,
  medium,
  expanded,
  large;

  static WindowSize fromWidth(double width) {
    if (width < 600) return WindowSize.compact;
    if (width < 840) return WindowSize.medium;
    if (width < 1200) return WindowSize.expanded;
    return WindowSize.large;
  }

  static WindowSize of(BuildContext context){
    return fromWidth(MediaQuery.sizeOf(context).width);
  }
  int get gridColumns => switch (this) {
    WindowSize.compact => 1,
    WindowSize.medium => 2,
    WindowSize.expanded => 3,
    WindowSize.large => 4,
  };
  bool get isCompact => this == WindowSize.compact;
}
