import 'package:go_router/go_router.dart';
import 'package:news_app/view/bottom_navigation_bar.dart';
import 'package:news_app/view/news_details_view.dart';

abstract class AppRouter {
  static const kHomeView = '/homeView';
  static const kNewsDetailsView = '/newsDetailsView';

  static final GoRouter router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) {
          return const BottomNavBar();
        },
      ),
      GoRoute(
        path: kNewsDetailsView,
        builder: (context, state) {
          return const NewsDetailsView();
        },
      ),
    ],
  );
}
