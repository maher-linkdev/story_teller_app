import 'package:flutter/material.dart';
import 'package:story_teller/src/core/constants/app_constants.dart';
import 'package:story_teller/src/feature/common/view/component/app_spacer.dart';
import 'package:story_teller/src/feature/select_story_specifications/presentation/view/component/select_story_specifications_title.dart';
import 'package:story_teller/src/feature/select_story_specifications/presentation/view/component/select_theme_view.dart';

import '../component/page_padding.dart';

class SelectStoryThemePage extends StatelessWidget {
  static const String routeName = '/select_theme';

  const SelectStoryThemePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: PagePadding(
          child: Column(
            children: [
              SelectStorySpecificationsTitle(
                title: "What's a Story Theme?",
                description: "Theme is the core idea or message of the story",
              ),
              AppSpacer(height: AppConstants.storySpecificationsSpacing),
              Expanded(child: SelectThemeView()),
            ],
          ),
        ),
      ),
    );
  }
}
