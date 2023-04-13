import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news_app/core/helpers/custom_home_app_bar_icon.dart';
import 'package:news_app/core/utils/app_strings.dart';
import 'package:news_app/features/discover/manager/discover_cubit.dart';
import 'package:news_app/features/discover/view/widgets/discover_list_view.dart';

class DiscoverViewBody extends StatefulWidget {
  const DiscoverViewBody({super.key});

  @override
  State<DiscoverViewBody> createState() => _DiscoverViewBodyState();
}

class _DiscoverViewBodyState extends State<DiscoverViewBody> {
 late TextEditingController searchController ;

  @override
  void initState() {
    super.initState();
     searchController = TextEditingController();
  }

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final blocData = BlocProvider.of<DiscoverNewsCubit>(context);
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 16.h,
            ),
            customHomeAppBarIcon(
                icon: CupertinoIcons.chevron_left, heroTag: 'btn5'),
            SizedBox(
              height: 12.h,
            ),
            Text(
              AppStrings.kDiscover,
              style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
            ),
            Text(
              AppStrings.kNewsAroundWorld,
              style: Theme.of(context).textTheme.titleSmall!.copyWith(
                    color: Colors.black.withOpacity(.4),
                  ),
            ),
            SizedBox(
              height: 12.h,
            ),
            TextField(
              controller: searchController,
              decoration: InputDecoration(
                fillColor: Colors.blueGrey.withOpacity(.07),
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide.none,
                ),
                prefixIcon: const Icon(CupertinoIcons.search),
                hintText: 'Search',
              ),
              onChanged: (value) {
                setState(() {
                  blocData.getDiscoverNews(value);
                });
              },
            ),
            SizedBox(
              height: 16.h,
            ),
            const DiscoverListView(),
          ],
        ),
      ),
    );
  }
}
