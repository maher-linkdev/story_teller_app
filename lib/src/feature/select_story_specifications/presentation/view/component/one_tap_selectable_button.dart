import 'package:flutter/material.dart';
import 'package:story_teller/src/core/constants/app_text_styles.dart';
import 'package:story_teller/src/core/constants/colors_palette.dart';

class OneTapSelectableButton extends StatefulWidget {
  final String title;
  final Function onPressed;

  const OneTapSelectableButton({super.key, required this.title, required this.onPressed});

  @override
  State<OneTapSelectableButton> createState() => _OneTapSelectableButtonState();
}

class _OneTapSelectableButtonState extends State<OneTapSelectableButton> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Future.delayed(const Duration(milliseconds: 150), () {
          setState(() {
            isSelected = true;
          });
          widget.onPressed();
        });
      },
      style: ButtonStyle(
        elevation: WidgetStateProperty.all(0),
        side: WidgetStateProperty.all(
          BorderSide(
            color: isSelected ? ColorsPalette.black : ColorsPalette.grey,
          ),
        ),
        shape: WidgetStateProperty.all(
          const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(34)),
          ),
        ),
        padding: WidgetStateProperty.all(const EdgeInsets.symmetric(horizontal: 22, vertical: 18)),
        backgroundColor: WidgetStateProperty.all(Colors.transparent),
        enableFeedback: true,
      ),
      child: Text(
        textAlign: TextAlign.center,
        widget.title,
        style: AppTextStyles.defaultStyle.copyWith(fontSize: AppTextStyles.fontSizeMedium),
      ),
    );
  }
}
