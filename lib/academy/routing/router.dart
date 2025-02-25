import 'package:go_router/go_router.dart';
import 'package:teachblox/academy/routing/routes.dart';
import 'package:teachblox/academy/screens/landing_screen/landing_screen.dart';
import 'package:teachblox/academy/screens/login_screen/login_screen.dart';
import 'package:teachblox/academy/screens/register_screen/register_screen.dart';

final router = GoRouter(
  initialLocation: landingScreenRoute,
  routes: [
    GoRoute(
      path: landingScreenRoute,
      builder: (context, state) => LandingScreen(),
    ),
    GoRoute(
      path: loginScreenRoute,
      builder: (context, state) => LoginScreen(),
    ),
    GoRoute(
      path: registerScreenRoute,
      builder: (context, state) => RegisterScreen(),
    ),
  ],
);
