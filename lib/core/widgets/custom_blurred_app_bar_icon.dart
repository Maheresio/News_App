import 'dart:ui' as ui;

import 'package:flutter/material.dart';

class CustomBlurredAppBarIcon extends StatelessWidget {
  final IconData iconData;
  final double iconSize;
  final double blurSigma;
  final void Function()? onPressed;

  const CustomBlurredAppBarIcon({
    Key? key,
    required this.iconData,
    this.iconSize = 25,
    this.blurSigma = 2,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.06 + iconSize,
      height: MediaQuery.of(context).size.width * 0.06 + iconSize,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.black54.withOpacity(0.15),
      ),
      child: Center(
        child: ClipOval(
          child: BackdropFilter(
            filter: ui.ImageFilter.blur(
              sigmaX: blurSigma,
              sigmaY: blurSigma,
            ),
            child: IconButton(
              icon: Icon(
                iconData,
                size: iconSize,
                color: Colors.white,
              ),
              onPressed: onPressed,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
