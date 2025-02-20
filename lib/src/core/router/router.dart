import 'package:go_router/go_router.dart';
import 'package:story_teller/src/feature/home/presentation/view/page/home_page.dart';
import 'package:story_teller/src/feature/onboarding/presentation/page/onboarding_page.dart';
import 'package:story_teller/src/feature/select_story_specifications/presentation/view/page/select_story_genre_page.dart';
import 'package:story_teller/src/feature/select_story_specifications/presentation/view/page/select_story_length_page.dart';
import 'package:story_teller/src/feature/select_story_specifications/presentation/view/page/select_story_protagonist_page.dart';
import 'package:story_teller/src/feature/select_story_specifications/presentation/view/page/select_story_theme_page.dart';
import 'package:story_teller/src/feature/splash/presentation/page/splash_page.dart';

class AppRouter {
  final router = GoRouter(
    initialLocation: SplashPage.routeName,
    routes: [
      GoRoute(
        name: SplashPage.routeName,
        path: SplashPage.routeName,
        builder: (context, state) => const SplashPage(),
      ),
      GoRoute(
        name: OnboardingPage.routeName,
        path: OnboardingPage.routeName,
        builder: (context, state) => const OnboardingPage(),
      ),
      GoRoute(
        name: SelectStoryGenrePage.routeName,
        path: SelectStoryGenrePage.routeName,
        builder: (context, state) => const SelectStoryGenrePage(),
        routes: [
          GoRoute(
            name: SelectStoryThemePage.routeName,
            path: SelectStoryThemePage.routeName,
            builder: (context, state) => const SelectStoryThemePage(),
            routes: [
              GoRoute(
                name: SelectStoryLengthPage.routeName,
                path: SelectStoryLengthPage.routeName,
                builder: (context, state) => const SelectStoryLengthPage(),
                routes: [
                  GoRoute(
                    name: SelectStoryProtagonistPage.routeName,
                    path: SelectStoryProtagonistPage.routeName,
                    builder: (context, state) => const SelectStoryProtagonistPage(),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
      GoRoute(
        name: HomePage.routeName,
        path: HomePage.routeName,
        builder: (context, state) => const HomePage(),
      ),
    ],
  );
}
