import 'package:flutter/material.dart';
import 'package:story_teller/src/core/constants/app_text_styles.dart';
import 'package:story_teller/src/core/constants/colors_palette.dart';

class PrimaryButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String title;
  final TextStyle? titleStyle;
  final Color backgroundColor;

  const PrimaryButton(
      {super.key, this.onPressed, required this.title, this.titleStyle, this.backgroundColor = ColorsPalette.primary});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        elevation: WidgetStateProperty.all(16),
        shadowColor: WidgetStateProperty.all(ColorsPalette.black),
        side: WidgetStateProperty.all(BorderSide(color: backgroundColor)),
        shape: WidgetStateProperty.all(
          const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(30),
            ),
          ),
        ),
        padding: WidgetStateProperty.all(const EdgeInsets.symmetric(horizontal: 6.0, vertical: 16.0)),
        backgroundColor: WidgetStateProperty.all(backgroundColor),
        enableFeedback: true,
      ),
      child: SizedBox(
        width: double.infinity,
        child: Center(
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: titleStyle ??
                AppTextStyles.defaultStyle.copyWith(
                  color: ColorsPalette.black,
                  fontWeight: AppTextStyles.fontWeightExtraBold,
                  fontSize: AppTextStyles.fontSizeLarge,
                ),
          ),
        ),
      ),
    );
  }
}
