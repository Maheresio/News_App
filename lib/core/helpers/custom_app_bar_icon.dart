import 'package:flutter/material.dart';

import '../utils/app_colors.dart';

FloatingActionButton customAppBarIcon({
  required IconData icon,
  final void Function()? onPressed,
  final isNotified=false,
}) =>
    FloatingActionButton(
      
        elevation: 0,
        onPressed: onPressed,
        backgroundColor: AppColors.kGreyColor,
        child:isNotified? Badge(
          
          child: Icon(
            icon,
            color: AppColors.kIconBlackColor,
          ),
        ): Icon(
          icon,
          color: AppColors.kIconBlackColor,
        ));
