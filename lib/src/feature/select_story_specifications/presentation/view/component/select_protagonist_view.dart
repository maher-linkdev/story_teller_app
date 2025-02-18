import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:story_teller/src/core/constants/app_constants.dart';
import 'package:story_teller/src/feature/common/view/component/app_spacer.dart';
import 'package:story_teller/src/feature/home/presentation/view/page/home_page.dart';
import 'package:story_teller/src/feature/select_story_specifications/presentation/logic/provider/story_specifications_provider.dart';
import 'package:story_teller/src/feature/select_story_specifications/presentation/view/component/one_tap_selectable_button.dart';

class SelectProtagonistView extends ConsumerWidget {
  const SelectProtagonistView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ListView.separated(
      separatorBuilder: (context, _) => const AppSpacer(
        height: AppConstants.storySpecificationsOptionsSeparatorSpacing,
      ),
      itemBuilder: (context, index) => OneTapSelectableButton(
        title: AppConstants.protagonists[index],
        onPressed: () {
          ref.read(storySpecificationsProvider.notifier).setStoryProtagonist(AppConstants.protagonists[index]);
          context.goNamed(HomePage.routeName);
        },
      ),
      itemCount: AppConstants.protagonists.length,
    );
  }
}
