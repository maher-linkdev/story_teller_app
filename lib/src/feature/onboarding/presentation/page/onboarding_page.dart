import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:story_teller/src/core/constants/app_assets.dart';
import 'package:story_teller/src/core/constants/app_constants.dart';
import 'package:story_teller/src/core/constants/app_text_styles.dart';
import 'package:story_teller/src/feature/common/view/component/primary_button.dart';
import 'package:story_teller/src/feature/select_story_specifications/presentation/view/page/select_story_genre_page.dart';

class OnboardingPage extends StatelessWidget {
  static const String routeName = '/onboarding';

  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Image.asset(
                AppAssets.onboardingPoster,
                width: double.infinity,
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: AppConstants.kAppHorizontalSpace),
                child: Column(
                  children: [
                    const Spacer(flex: 1),
                    RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        style: AppTextStyles.defaultStyle.copyWith(
                          fontSize: AppTextStyles.fontSizeXXL,
                        ),
                        children: const [
                          TextSpan(text: "Welcome to Story Teller!"),
                          TextSpan(text: "\n"),
                          TextSpan(text: "Unleash"),
                          TextSpan(text: "\n"),
                          TextSpan(text: "Your Imagination"),
                        ],
                      ),
                    ),
                    const Spacer(flex: 1),
                    RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        style: AppTextStyles.defaultStyle.copyWith(
                          fontSize: AppTextStyles.fontSizeMedium,
                        ),
                        children: const [
                          TextSpan(text: "From fairy tales to space adventures,"),
                          TextSpan(text: "\n"),
                          TextSpan(text: "every story is a new adventure. Let’s start imagining!"),
                        ],
                      ),
                    ),
                    const Spacer(flex: 5),
                    ConstrainedBox(
                      constraints: const BoxConstraints(maxWidth: 500),
                      child: PrimaryButton(
                        title: "Get started",
                        onPressed: () {
                          context.pushNamed(SelectStoryGenrePage.routeName);
                        },
                      ),
                    ),
                    const Spacer(flex: 1),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
