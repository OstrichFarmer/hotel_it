import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hotel_it/common/app_strings.dart';
import 'package:hotel_it/common/custom_textstyles.dart';
import 'package:hotel_it/views/terms_and_conditions.dart/t_and_c_viewmodel.dart';
import 'package:stacked/stacked.dart';

class TAndCView extends StatelessWidget {
  const TAndCView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<TAndCViewModel>.reactive(
        viewModelBuilder: () => TAndCViewModel(),
        builder: (
          BuildContext context,
          TAndCViewModel model,
          Widget? child,
        ) {
          return Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              title: Text(
                "Terms and Condition",
                style: w600Style(17, Theme.of(context).colorScheme.onSurface),
              ),
            ),
            body: Padding(
              padding: EdgeInsets.only(left: 20.w, right: 20.w),
              child: SingleChildScrollView(
                child: Text(
                  ksLoremIpsum,
                  style: w400Style(
                      17, Theme.of(context).colorScheme.onSurfaceVariant),
                ),
              ),
            ),
          );
        });
  }
}
