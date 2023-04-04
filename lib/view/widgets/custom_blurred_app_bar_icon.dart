import 'dart:ui' as ui;

import 'package:flutter/material.dart';

class CustomBlurredAppBarIcon extends StatelessWidget {
  final IconData iconData;
  final double iconSize;
  final double blurSigma;

  const CustomBlurredAppBarIcon({
    Key? key,
    required this.iconData,
    this.iconSize = 20,
    this.blurSigma = 5,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.06 + iconSize,
      height: MediaQuery.of(context).size.width * 0.06 + iconSize,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.blueGrey.withOpacity(0.7),
      ),
      child: Center(
        child: ClipOval(
          child: BackdropFilter(
            filter: ui.ImageFilter.blur(
              sigmaX: blurSigma,
              sigmaY: blurSigma,
            ),
            child: Icon(
              iconData,
              size: iconSize,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
