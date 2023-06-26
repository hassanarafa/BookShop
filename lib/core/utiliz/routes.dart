import 'package:bookshop/features/splash/presentation/views/splashview.dart';
import 'package:go_router/go_router.dart';

import '../../features/home/presentation/views/book-details.dart';
import '../../features/home/presentation/views/home.dart';

abstract class AppRouter {
  static const kHomepage = "/homepage";
  static const kBookDetail = "/BookDetail";
  static final router = GoRouter(routes: [
    GoRoute(
      path: "/",
      builder: (context, state) => const Splashview(),
    ),
    GoRoute(
      path: kHomepage,
      builder: (context, state) => const Homepage(),
    ),
    GoRoute(
      path: kBookDetail,
      builder: (context, state) => const BookDetail(),
    )
  ]);
}
