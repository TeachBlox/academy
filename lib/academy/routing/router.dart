import 'package:go_router/go_router.dart';
import 'package:teachblox/academy/routing/routes.dart';
import 'package:teachblox/academy/screens/home_screen/home_screen.dart';
import 'package:teachblox/academy/screens/init_screen/init_screen.dart';
import 'package:teachblox/academy/screens/landing_screen/landing_screen.dart';
import 'package:teachblox/academy/screens/login_screen/login_screen.dart';
import 'package:teachblox/academy/screens/register_screen/register_screen.dart';
import 'package:teachblox/academy/screens/register_screen/register_password_screen.dart';
import 'package:teachblox/academy/store/auth_store/auth_store.dart';

GoRouter router = GoRouter(
  initialLocation: initScreenRoute,
  refreshListenable: authStore,
  redirect: (context, state) {
    final bool isAuthScreen = !(state.fullPath?.startsWith(appRoute) ?? true);
    final bool isLandingScreen = state.fullPath == initScreenRoute;

    if (authStore.isLoggedIn) {
      return isAuthScreen ? homeScreenRoute : null;
    } else {
      return isAuthScreen && !isLandingScreen ? null : landingScreenRoute;
    }
  },
  routes: [
    GoRoute(
      path: initScreenRoute,
      name: initScreenRoute,
      builder: (context, state) => InitScreen(),
    ),
    GoRoute(
      path: landingScreenRoute,
      name: landingScreenRoute,
      builder: (context, state) => LandingScreen(),
    ),
    GoRoute(
      path: loginScreenRoute,
      name: loginScreenRoute,
      builder: (context, state) => LoginScreen(),
    ),
    GoRoute(
      path: registerScreenRoute,
      name: registerScreenRoute,
      builder: (context, state) => RegisterScreen(),
    ),
    GoRoute(
      path: registerScreenPasswordRoute,
      name: registerScreenPasswordRoute,
      builder: (context, state) => RegisterPasswordScreen(),
    ),
    GoRoute(
      path: homeScreenRoute,
      name: homeScreenRoute,
      builder: (context, state) => HomeScreen(),
    ),
  ],
);
