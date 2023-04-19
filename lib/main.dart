import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
// ignore: depend_on_referenced_packages
import 'package:wakelock/wakelock.dart';

import 'core/helpers/custom_status_bar.dart';
import 'core/utils/app_router.dart';
import 'core/utils/service_locator.dart';
import 'core/widgets/no_internet_connection.dart';
import 'features/bookmark/manager/bookmark_provider.dart';
import 'features/home/managers/breaking_news_cubit/breaking_news_cubit.dart';
import 'features/home/managers/recommendation_news_cubit/recommendation_news_cubit.dart';
import 'manager/news_provider.dart';
import 'repos/news_repo_impl.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await ScreenUtil.ensureScreenSize();
  serviceLocator();

  customStatusBar();
  Wakelock.enable();

  runApp(
    ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          final newsRepo = getIt.get<NewsRepoImpl>();
          return MultiProvider(
            providers: [
              BlocProvider<BreakingNewsCubit>(
                  create: (context) =>
                      BreakingNewsCubit(newsRepo)..getBreakingNews()),
              BlocProvider<RecommendationNewsCubit>(
                  create: (context) => RecommendationNewsCubit(newsRepo)
                    ..getRecommendationNews()),
              ChangeNotifierProvider<NewsProvider>(
                  create: (context) => NewsProvider()),
              ChangeNotifierProvider<BookMarkProvider>(
                  create: (context) => BookMarkProvider()),
            ],
            child: GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
              child: StreamBuilder(
                stream: Connectivity().onConnectivityChanged,
                builder: (context, AsyncSnapshot<ConnectivityResult> snapshot) {
                  return snapshot.data == ConnectivityResult.mobile ||
                          snapshot.data == ConnectivityResult.wifi
                      ? MaterialApp.router(
                          debugShowCheckedModeBanner: false,
                          theme: ThemeData.light().copyWith(
                            textTheme: GoogleFonts.dmSansTextTheme(),
                          ),
                          routerConfig: AppRouter.router,
                        )
                      : const MaterialApp(
                          home: InternetNotConnected(),
                          debugShowCheckedModeBanner: false,
                        );
                },
              ),
            ),
          );
        }),
  );
}
