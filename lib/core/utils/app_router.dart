import 'package:bookley/Features/Search/presentetion/views/search_view.dart';
import 'package:bookley/Features/home/presentaion/views/book_view_details.dart';
import 'package:bookley/Features/home/presentaion/views/home_view.dart';
import 'package:bookley/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kHomeView = '/HomeView';
  static const kBookDetails = '/bookdetails';
  static const kSearchView = '/searchview';
  static final router = GoRouter(
    routes: [
      GoRoute(path: '/', builder: (context, state) => SplashView()),
      GoRoute(path: kHomeView, builder: (context, state) => HomeView()),
      GoRoute(
        path: kBookDetails,
        builder: (context, state) => BookViewDetails(),
      ),
      GoRoute(path: kSearchView, builder: (context, state) => SearchView()),
    ],
  );
}
