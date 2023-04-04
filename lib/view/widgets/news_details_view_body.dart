import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/helpers/custom_details_app_bar.dart';

class NewsDetailsViewBody extends StatelessWidget {
  const NewsDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return NestedScrollView(
      headerSliverBuilder: (context, innerBoxIsScrolled) =>
          [customDetailsAppBar(context)],
      body: CustomScrollView(
        slivers: <Widget>[
          SliverFillRemaining(
            hasScrollBody: false,
            child: Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadiusDirectional.only(
                  topStart: Radius.circular(30),
                  topEnd: Radius.circular(30),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 15.w,
                  vertical: 15.h,
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        const CircleAvatar(
                          backgroundImage: NetworkImage(
                              'https://upload.wikimedia.org/wikipedia/commons/thumb/6/66/CNN_International_logo.svg/2048px-CNN_International_logo.svg.png'),
                        ),
                        SizedBox(width: 4.w),
                        Text(
                          'CNN Indonesia',
                          style: Theme.of(context)
                              .textTheme
                              .headlineSmall!
                              .copyWith(
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                              ),
                        ),
                        SizedBox(width: 4.w),
                        Icon(
                          size: 15.w,
                          Icons.verified,
                          color: Theme.of(context).primaryColor,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    Expanded(
                      child: Text(
                        'Several lawmakers, both Several lawmakers, both Several lawmakers, both Several lawmakers, both Several lawmakers, both Several lawmakers, both Several lawmakers, both allies and critics oSeveral lawmakers, both allies and critics oSeveral lawmakers, both allies and critics oSeveral lawmakers, both allies and critics oSeveral lawmakers, both allies and critics oSeveral lawmakers, both allies and critics oSeveral lawmakers, both allies and critics oSeveral lawmakers, both allies and critics oSeveral lawmakers, both allies and critics oSeveral lawmakers, both allies and critics oSeveral lawmakers, both allies and critics oSeveral lawmakers, both allies and critics oSeveral lawmakers, both allies and critics oSeveral lawmakers, both allies and critics oSeveral lawmakers, both allies and critics oSeveral lawmakers, both allies and critics oSeveral lawmakers, both allies and critics oSeveral lawmakers, both allies and critics oSeveral lawmakers, both allies and critics oSeveral lawmakers, both allies and critics oSeveral lawmakers, both allies and critics oSeveral lawmakers, both allies and critics oSeveral lawmakers, both allies and critics oSeveral lawmakers, both allies and critics of Donald Trump, have issued statements following the former presidents arraignment Tuesday.Trump personally pleaded not guilty in a Manhattan court to 34 felony counts of falsifying business records in the first degree after hearing charges against him stemming from a hush money payment to an adult film actress in 2016 Heres how lawmakers are reacting:GOP Sen. Mitt Romney, a sharp Trump critic, criticized what he called Manhattan District Attorney Alvin Bragg’s overreach, and said it sets a "dangerous precedent.""I believe President Trump’s character and conduct make him unfit for office," Romney said in a statement. "Even so, I believe the New York prosecutor has stretched to reach felony criminal charges in order to fit a political agenda. No one is above the law, not even former presidents, but everyone is entitled to equal treatment under the law. The prosecutor’s overreach sets a dangerous precedent for criminalizing political opponents and damages the public’s faith in our justice system." ',
                        style:
                            Theme.of(context).textTheme.titleMedium!.copyWith(
                                  fontWeight: FontWeight.w400,
                                  height: 1.5,
                                ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
