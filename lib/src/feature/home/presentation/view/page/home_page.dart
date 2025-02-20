import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:story_teller/src/core/constants/app_constants.dart';
import 'package:story_teller/src/core/constants/app_text_styles.dart';
import 'package:story_teller/src/core/constants/colors_palette.dart';
import 'package:story_teller/src/feature/common/view/component/app_spacer.dart';
import 'package:story_teller/src/feature/home/presentation/logic/provider/home_story_provider.dart';

class HomePage extends ConsumerWidget {
  static const String routeName = '/home';

  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final homeStoryState = ref.watch(homeStoryProvider);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorsPalette.primary,
        title: Text(
          homeStoryState.value?.title ?? "",
          style: AppTextStyles.defaultStyle.copyWith(
            fontSize: 22,
            fontWeight: AppTextStyles.fontWeightBold,
            color: ColorsPalette.glowGrey,
          ),
          maxLines: 2,
        ),
      ),
      body: SafeArea(
          child: homeStoryState.when(
        data: (story) {
          return ListView.separated(
            padding: const EdgeInsets.symmetric(horizontal: AppConstants.kAppHorizontalSpace, vertical: 28),
            itemCount: story.paragraphs.length,
            itemBuilder: (context, index) => ParagraphItem(content: story.paragraphs[index]),
            separatorBuilder: (context, _) => const AppSpacer(height: 12),
          );
        },
        error: (_, __) => const Center(
          child: Text("Something went wrong"),
        ),
        loading: () => const Center(
          child: CircularProgressIndicator.adaptive(),
        ),
      )),
    );
  }
}

class ParagraphItem extends StatelessWidget {
  final String content;

  const ParagraphItem({super.key, required this.content});

  @override
  Widget build(BuildContext context) {
    return Text(
      content,
      style: AppTextStyles.defaultStyle.copyWith(
        fontSize: 18,
        fontWeight: AppTextStyles.fontWeightMedium,
      ),
    );
  }
}
