import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:story_teller/src/core/constants/app_assets.dart';
import 'package:story_teller/src/feature/onboarding/presentation/page/onboarding_page.dart';
import 'package:story_teller/src/feature/select_story_specifications/presentation/view/page/select_story_genre_page.dart';

class SplashPage extends StatefulWidget {
  static const String routeName = '/';

  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    onInit();
  }

  onInit() async {
    Future.delayed(const Duration(seconds: 2), () {
      if (mounted) {
        context.goNamed(OnboardingPage.routeName);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Image.asset(
            AppAssets.splash,
            width: double.infinity,
          ),
        ),
      ),
    );
  }
}
