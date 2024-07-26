import 'package:go_router/go_router.dart';
import 'package:haulway_mobile/app/splash_screen.dart';
import 'package:haulway_mobile/features/dashboard/presentation/dashboard.dart';
import 'package:haulway_mobile/features/onboarding/onboarding.dart';

class AppRoute {
  static final GoRouter routes = GoRouter(
    routes: [
      GoRoute(
        path: SplashScreen.routeName,
        builder: (context, state) => const SplashScreen(),
      ),
      GoRoute(
        path: OnboardingScreen.routeName,
        builder: (context, state) => const OnboardingScreen(),
      ),
      GoRoute(
        path: Dashboard.routeName,
        builder: (context, state) => const Dashboard(),
      )
    ],
  );
}
