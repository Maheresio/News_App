import 'package:flutter/material.dart';

import '../utils/app_colors.dart';

FloatingActionButton customHomeAppBarIcon(
        {required IconData icon,
        final void Function()? onPressed,
        final isNotified = false,
        required final String heroTag}) =>
    FloatingActionButton(
        heroTag: heroTag,
        elevation: 0,
        onPressed: onPressed,
        backgroundColor: AppColors.kGreyColor,
        child: isNotified
            ? Badge(
                child: Icon(
                  icon,
                  color: AppColors.kIconBlackColor,
                ),
              )
            : Icon(
                icon,
                color: AppColors.kIconBlackColor,
              ));
