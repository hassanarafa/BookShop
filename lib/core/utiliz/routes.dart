import 'package:bookshop/features/splash/presentation/views/splashview.dart';
import 'package:go_router/go_router.dart';

import '../../features/home/presentation/views/home.dart';

abstract class AppRouter {
  static final router = GoRouter(routes: [
    GoRoute(
      path: "/",
      builder: (context, state) => const Splashview(),
    ),
    GoRoute(
      path: "/homepage",
      builder: (context, state) => const Homepage(),
    )
  ]);
}
