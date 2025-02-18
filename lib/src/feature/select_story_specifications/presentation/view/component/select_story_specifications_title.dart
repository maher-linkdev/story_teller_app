import 'package:flutter/material.dart';
import 'package:story_teller/src/core/constants/app_constants.dart';
import 'package:story_teller/src/core/constants/app_text_styles.dart';
import 'package:story_teller/src/core/constants/colors_palette.dart';
import 'package:story_teller/src/feature/common/view/component/app_spacer.dart';

class SelectStorySpecificationsTitle extends StatelessWidget {
  final String title;
  final String description;
  const SelectStorySpecificationsTitle({super.key,required this.title,required this.description});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        const AppSpacer(height: AppConstants.kAppVerticalSpace),
      Text(
        title,
            style: AppTextStyles.defaultStyle
                .copyWith(fontSize: AppTextStyles.fontSizeXXL),
          ),

        const AppSpacer(height: 8),
        Text(
          description,
          style: AppTextStyles.defaultStyle.copyWith(color: ColorsPalette.grey,fontSize: AppTextStyles.fontSizeLarge)
              ,
        ),
        const AppSpacer(height: AppConstants.kAppVerticalSpace),

      ],
    );
  }
}
