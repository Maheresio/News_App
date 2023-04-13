import 'package:flutter/material.dart';

class SlidingText extends StatelessWidget {
  const SlidingText({
    super.key,
    required Animation<Offset> slidingAnimation,
  }) : _slidingAnimation = slidingAnimation;

  final Animation<Offset> _slidingAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _slidingAnimation,
      builder: (context, _) => SlideTransition(
        position: _slidingAnimation,
        child: Text(
          'Breaking News',
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                color: Theme.of(context).primaryColor,
              ),
        ),
      ),
    );
  }
}
