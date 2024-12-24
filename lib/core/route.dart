import 'package:bookly/fueature/home/presntation/view/book_detail_view.dart';
import 'package:bookly/fueature/home/presntation/view/home_view.dart';
import 'package:bookly/fueature/search/presentation/view/search_view.dart';
import 'package:bookly/fueature/splash/presentation/view/splash_view.dart';
import 'package:go_router/go_router.dart';

class RouteApp {
  static const String homeView = "/HomeView";
  static const String bookDetailView = "/BookDetailView";
  static const String searchView = "/SearchView";
  static var router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: searchView,
        builder: (context, state) => const SearchView(),
      ),
      GoRoute(
        path: homeView,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: bookDetailView,
        builder: (context, state) => const BookDetailView(),
      ),
    ],
  );
}
