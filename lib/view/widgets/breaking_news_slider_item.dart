import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../manager/news_provider.dart';
import 'package:provider/provider.dart';

class BreakingNewsSliderItem extends StatelessWidget {
  const BreakingNewsSliderItem({super.key, required this.index});

  final int index;
  @override
  Widget build(BuildContext context) {
    final providerData = Provider.of<NewsProvider>(context, listen: false);
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
          image: NetworkImage(
            providerData.breakingNewsList.elementAt(index).imageUrl,
          ),
          colorFilter: ColorFilter.mode(
            Colors.black.withOpacity(0.4),
            BlendMode.darken,
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 16.w,
          vertical: 16.h,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: BorderRadius.circular(
                  15,
                ),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 12.w,
                  vertical: 4.h,
                ),
                child: Text(
                  providerData.breakingNewsList.elementAt(index).category,
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        color: Colors.white,
                      ),
                ),
              ),
            ),
            const Spacer(),
            Row(
              children: [
                Text(
                  overflow: TextOverflow.ellipsis,
                  providerData.breakingNewsList.elementAt(index).author,
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: Colors.grey.shade300.withOpacity(.9),
                        fontWeight: FontWeight.w100,
                      ),
                ),
                SizedBox(
                  width: 6.w,
                ),
                CircleAvatar(
                  backgroundColor: Theme.of(context).primaryColor,
                  radius: 7.w,
                  child: Icon(
                    Icons.done,
                    color: Colors.white,
                    size: 8.w,
                  ),
                ),
                SizedBox(
                  width: 6.w,
                ),
                const CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 2,
                ),
                SizedBox(
                  width: 6.w,
                ),
                Text(
                  '${providerData.breakingNewsList.elementAt(index).publishedDate} hours ago',
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        color: Colors.grey.shade300.withOpacity(
                          .9,
                        ),
                        fontWeight: FontWeight.w100,
                      ),
                ),
              ],
            ),
            SizedBox(
              height: 4.h,
            ),
            Expanded(
              child: Text(
                overflow: TextOverflow.ellipsis,
                maxLines: 3,
                providerData.breakingNewsList.elementAt(index).title,
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      color: Colors.white.withOpacity(.9),
                      fontWeight: FontWeight.normal,
                    ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
