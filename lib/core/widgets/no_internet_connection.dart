import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class InternetNotConnected extends StatelessWidget {
  const InternetNotConnected({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.signal_wifi_off,
              color: Theme.of(context).primaryColor,
              size: 88.w,
            ),
            SizedBox(
              height: 20.h,
            ),
            Text(
              'No internet connection',
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
            ),
            SizedBox(
              height: 10.h,
            ),
            const Text(
              'Please check your internet connection and try again.',
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
