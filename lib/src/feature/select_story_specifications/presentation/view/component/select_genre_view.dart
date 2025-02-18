import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:story_teller/src/core/constants/app_constants.dart';
import 'package:story_teller/src/feature/common/view/component/app_spacer.dart';
import 'package:story_teller/src/feature/select_story_specifications/presentation/logic/provider/story_specifications_provider.dart';
import 'package:story_teller/src/feature/select_story_specifications/presentation/view/component/one_tap_selectable_button.dart';
import 'package:story_teller/src/feature/select_story_specifications/presentation/view/page/select_story_theme_page.dart';

class SelectGenreView extends ConsumerWidget {
  const SelectGenreView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ListView.separated(
      separatorBuilder: (context, _) => const AppSpacer(
        height: AppConstants.storySpecificationsOptionsSeparatorSpacing,
      ),
      itemBuilder: (context, index) => OneTapSelectableButton(
        title: AppConstants.genres[index],
        onPressed: () {
          ref.read(storySpecificationsProvider.notifier).setStoryGenre(AppConstants.genres[index]);
          context.pushNamed(SelectStoryThemePage.routeName);
        },
      ),
      itemCount: AppConstants.genres.length,
    );
  }
}
