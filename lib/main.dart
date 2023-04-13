import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:news_app/core/utils/service_locator.dart';
import 'package:news_app/manager/bookmark_provider/bookmark_provider.dart';
import 'package:news_app/manager/breaking_news_cubit/breaking_news_cubit.dart';
import 'package:news_app/manager/recommendation_news_cubit/recommendation_news_cubit.dart';
import 'package:news_app/repo/news_repo_impl.dart';
import 'manager/news_provider.dart';
import 'package:provider/provider.dart';
// ignore: depend_on_referenced_packages
import 'package:wakelock/wakelock.dart';

import 'core/helpers/custom_status_bar.dart';
import 'core/utils/app_router.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await ScreenUtil.ensureScreenSize();

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
            child: MaterialApp.router(
              debugShowCheckedModeBanner: false,
              theme: ThemeData.light().copyWith(
                textTheme: GoogleFonts.dmSansTextTheme(),
              ),
              routerConfig: AppRouter.router,
            ),
          );
        }),
  );
}
