import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'colors.dart';

class AppIconStyle {
  AppIconStyle._();

  static Widget icon(
      String iconPath, {
        double size = 24,
        Color color = black,
      }) {
    return SvgPicture.asset(
      iconPath,
      height: size,
      width: size,
      colorFilter: ColorFilter.mode(
        color,
        BlendMode.srcIn,
      ),
    );
  }

  static Widget small(String iconPath, {Color color = Colors.black}) {
    return icon(iconPath, size: 16, color: color);
  }

  static Widget medium(String iconPath, {Color color = Colors.black}) {
    return icon(iconPath, size: 24, color: color);
  }

  static Widget large(String iconPath, {Color color = Colors.black}) {
    return icon(iconPath, size: 32, color: color);
  }
}
