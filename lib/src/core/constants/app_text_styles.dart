import 'package:flutter/material.dart';
import 'package:story_teller/src/core/constants/colors_palette.dart';

class AppTextStyles {
  AppTextStyles._();

  ///FONTS WEIGHTS
  static const fontWeightLight = FontWeight.w300;
  static const fontWeightRegular = FontWeight.w400;
  static const fontWeightMedium = FontWeight.w500;
  static const fontWeightBold = FontWeight.w600;
  static const fontWeightExtraBold = FontWeight.w700;

  ///FONT SIZES
  static const fontSizeSmall = (12.0);
  static const fontSizeRegular = (14.0);
  static const fontSizeMedium = (16.0);
  static const fontSizeLarge = (20.0);
  static const fontSizeXL = (28.0);
  static const fontSizeXXL = (32.0);
  static const fontSizeXXXL = (48.0);

  static const defaultStyle = TextStyle(
    height: 1.4,
    fontSize: fontSizeRegular,
    fontWeight: fontWeightRegular,
    color: ColorsPalette.black,
  );
}
