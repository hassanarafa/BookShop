import 'package:bookshop/features/splash/presentation/views/splashview.dart';
import 'package:go_router/go_router.dart';

import '../../features/home/presentation/views/book-details.dart';
import '../../features/home/presentation/views/home.dart';
import '../../features/search/presentation/views/SearchPage.dart';

abstract class AppRouter {
  static var imagePATH = "", title = "", subtitle = "";
  static const kHomepage = "/homepage";
  static const kBookDetail = "/BookDetail";
  static const kSearchPage = "/SearchPage";
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
    ),
    GoRoute(
      path: kSearchPage,
      builder: (context, state) => const SearchPage(),
    )
  ]);
}
