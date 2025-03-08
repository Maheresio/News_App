import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomShimmerLoadingItem extends StatelessWidget {
  const CustomShimmerLoadingItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(
        bottom: 8.w,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 100.h,
            width: 120.w,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 8.w,
                vertical: 12.h,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: 60.w,
                    height: 8.h,
                    color: Colors.white,
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  Container(
                    width: double.infinity,
                    height: 10.h,
                    color: Colors.white,
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                  Container(
                    width: double.infinity,
                    height: 10.h,
                    color: Colors.white,
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 8.h,
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            height: 10.h,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          width: 50.w,
                        ),
                        Expanded(
                          child: Container(
                            height: 10.h,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
