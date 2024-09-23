import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hotel_it/common/app_strings.dart';
import 'package:hotel_it/common/custom_textstyles.dart';
import 'package:hotel_it/views/profile/profile_viewmodel.dart';
import 'package:stacked/stacked.dart';

class PrivacyView extends StatelessWidget {
  const PrivacyView({super.key});

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
                "Privacy Policy",
                style: w600Style(
                  17,
                  Theme.of(context).colorScheme.onSurface,
                ),
              ),
              centerTitle: true,
            ),
            body: Padding(
              padding: EdgeInsets.only(left: 20.w, right: 20.w),
              child: SingleChildScrollView(
                child: Text(
                  ksLoremIpsum,
                  style: w400Style(
                      16, Theme.of(context).colorScheme.onSurfaceVariant),
                ),
              ),
            ),
          );
        });
  }
}
