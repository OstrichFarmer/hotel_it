import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hotel_it/common/app_strings.dart';
import 'package:hotel_it/common/custom_textstyles.dart';
import 'package:hotel_it/views/profile/profile_viewmodel.dart';
import 'package:stacked/stacked.dart';

class AboutUsView extends StatelessWidget {
  const AboutUsView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ProfileViewModel>.reactive(
        viewModelBuilder: () => ProfileViewModel(),
        builder: (
          BuildContext context,
          ProfileViewModel model,
          Widget? child,
        ) {
          return Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              title: Text(
                "About Us",
                style: w600Style(16, Theme.of(context).colorScheme.onSurface),
              ),
            ),
            body: Padding(
                padding: EdgeInsets.only(left: 20.w, right: 20.w),
                child: Text(
                  ksLoremIpsum,
                  style: w400Style(
                      17, Theme.of(context).colorScheme.onSurfaceVariant),
                )),
          );
        });
  }
}
