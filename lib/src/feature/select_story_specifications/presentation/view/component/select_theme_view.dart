import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:story_teller/src/core/constants/app_constants.dart';
import 'package:story_teller/src/feature/common/view/component/app_spacer.dart';
import 'package:story_teller/src/feature/select_story_specifications/presentation/logic/provider/story_specifications_provider.dart';
import 'package:story_teller/src/feature/select_story_specifications/presentation/view/component/one_tap_selectable_button.dart';
import 'package:story_teller/src/feature/select_story_specifications/presentation/view/page/select_story_length_page.dart';

class SelectThemeView extends ConsumerWidget {
  const SelectThemeView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ListView.separated(
      separatorBuilder: (context, _) => const AppSpacer(
        height: AppConstants.storySpecificationsOptionsSeparatorSpacing,
      ),
      itemBuilder: (context, index) => OneTapSelectableButton(
        title: AppConstants.themes[index],
        onPressed: () {
          ref.read(storySpecificationsProvider.notifier).setStoryTheme(AppConstants.themes[index]);
          context.pushNamed(SelectStoryLengthPage.routeName);
        },
      ),
      itemCount: AppConstants.themes.length,
    );
  }
}
