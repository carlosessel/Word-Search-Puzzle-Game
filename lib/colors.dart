import 'package:flutter/material.dart';

class AppColors {
  static const Color defaultColor = blueColor;
  static const Color corduroyColor = Color.fromRGBO(56, 65, 64, 1);
  static const Color darkGrayColor = Color.fromRGBO(180, 180, 180, 0.4);
  static const Color darkGrayLightColor = Color.fromRGBO(236, 243, 240, 1);
  static const Color whiteColor = Colors.white;
  static const Color yellowColor = Color.fromRGBO(237, 180, 37, 1);
  static const Color orangeLightColor = Color(0xFFFFD180);
  static const Color redColor = Color.fromRGBO(216, 33, 72, 1);
  static const Color greenColor = Color.fromRGBO(71, 137, 106, 1);
  static const Color greenLight = Color.fromRGBO(110, 191, 139, 1);
  static const Color blueColor = Color.fromRGBO(21, 29, 59, 1);
  static const Color blueLightColor = Color.fromRGBO(134, 198, 244, 1);
  static const Color tealColor = Color.fromRGBO(72, 143, 177, 1);
  static const Color purpleColor = Color.fromRGBO(83, 62, 133, 1);
  static const Color tealLightColor = Color.fromRGBO(28, 101, 140, 1);
}

class CustomColors {
  static Color primaryTextColor = Colors.white;
  static Color pageBackgroundColor = const Color(0xFF2D2F41);
  static Color menuBackgroundColor = const Color(0xFF242634);

  static Color colorBG = const Color(0xFF444974);
}

class GradientColors {
  final List<Color> colors;
  GradientColors(this.colors);

  static List<Color> sky = const [Color(0xFF6448FE), Color(0xFF5FC6FF)];
  static List<Color> sunset = const [Color(0xFFFE6197), Color(0xFFFFB463)];
  static List<Color> sea = const [Color(0xFF61A3FE), Color(0xFF63FFD5)];
  static List<Color> mango = const [Color(0xFFFFA738), Color(0xFFFFE130)];
  static List<Color> fire = const [Color(0xFFFF5DCD), Color(0xFFFF8484)];
}

class GradientTemplate {
  static List<GradientColors> gradientTemplate = [
    GradientColors(GradientColors.sky),
    GradientColors(GradientColors.sunset),
    GradientColors(GradientColors.sea),
    GradientColors(GradientColors.mango),
    GradientColors(GradientColors.fire),
  ];
}
