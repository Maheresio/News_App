import 'package:go_router/go_router.dart';
import '../../view/bottom_navigation_bar.dart';
import '../../view/news_details_view.dart';
import '../helpers/custom_transition_page.dart';

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
          return NewsDetailsView(
            data: state.extra as Map<String, dynamic>,
          );
        },
        pageBuilder: (context, state) => buildPageWithDefaultTransition<void>(
          context: context,
          state: state,
          child: NewsDetailsView(
            data: state.extra as Map<String, dynamic>,
          ),
        ),
      ),
    ],
  );
}
