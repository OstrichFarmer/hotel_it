import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hotel_it/common/custom_textstyles.dart';
import 'package:hotel_it/common/ui_helpers.dart';
import 'package:hotel_it/views/profile/profile_viewmodel.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class LanguageView extends StatelessWidget {
  final SheetRequest request;
  final Function(SheetResponse) completer;

  const LanguageView(
      {super.key, required this.request, required this.completer});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
        viewModelBuilder: () => ProfileViewModel(),
        builder: (
          BuildContext context,
          ProfileViewModel model,
          Widget? child,
        ) {
          return Container(
            padding: EdgeInsets.only(left: 20.w, right: 20.w),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.onPrimary,
              borderRadius: BorderRadius.circular(3.0),
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      request.title ?? '',
                      style: w600Style(
                          22, Theme.of(context).colorScheme.onSurface),
                    ),
                    verticalSpaceFifteen,
                  ],
                ),
                Text("data"),
              ],
            ),
          );
        });
  }
}
