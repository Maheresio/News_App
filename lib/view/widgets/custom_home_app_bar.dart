import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../core/helpers/custom_app_bar_icon.dart';

class CustomHomeAppBar extends StatelessWidget {
  const CustomHomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Row(
        children: [
          customAppBarIcon(
            icon: FontAwesomeIcons.bars,
            onPressed: () {},
          ),
          const Spacer(),
          Padding(
            padding: EdgeInsetsDirectional.only(end: 8.w),
            child: customAppBarIcon(
              icon: FontAwesomeIcons.magnifyingGlass,
              onPressed: () {},
            ),
          ),
          customAppBarIcon(
              icon: FontAwesomeIcons.bell, onPressed: () {}, isNotified: true),
        ],
      ),
    );
  }
}
