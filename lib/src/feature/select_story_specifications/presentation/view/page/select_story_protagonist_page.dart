import 'package:flutter/material.dart';
import 'package:story_teller/src/core/constants/app_constants.dart';
import 'package:story_teller/src/feature/common/view/component/app_spacer.dart';
import 'package:story_teller/src/feature/select_story_specifications/presentation/view/component/select_protagonist_view.dart';
import 'package:story_teller/src/feature/select_story_specifications/presentation/view/component/select_story_specifications_title.dart';

class SelectStoryProtagonistPage extends StatelessWidget {
  static const String routeName = '/select_protagonist';

  const SelectStoryProtagonistPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: AppConstants.kAppHorizontalSpace, vertical: AppConstants.kAppVerticalSpace),
          child: Column(
            children: [
              SelectStorySpecificationsTitle(
                title: "Who's the Protagonist?",
                description: "The protagonist is the main character of the story",
              ),
              AppSpacer(height: AppConstants.storySpecificationsSpacing),
              Expanded(child: SelectProtagonistView()),
            ],
          ),
        ),
      ),
    );
  }
}
