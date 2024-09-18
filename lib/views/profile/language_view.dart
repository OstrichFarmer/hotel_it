import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hotel_it/common/custom_textstyles.dart';
import 'package:hotel_it/common/ui_helpers.dart';
import 'package:stacked_services/stacked_services.dart';

class LanguageView extends StatelessWidget {
  final SheetRequest request;
  final Function(SheetResponse) completer;

  const LanguageView({
    super.key,
    required this.request,
    required this.completer,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
          child: Container(
            color: Colors.black.withOpacity(0.2),
          ),
        ),
        Center(
          child: Container(
            width: 350.w,
            height: 255.h,
            padding: const EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary,
              borderRadius: BorderRadius.circular(15.r),
            ),
            child: Column(
              children: [
                Text(
                  "Select Language",
                  style:
                      w600Style(16, Theme.of(context).colorScheme.onSecondary),
                ),
                verticalSpaceTwenty,
                TextButton(
                  onPressed: () {
                    completer(SheetResponse(confirmed: true, data: 'English'));
                  },
                  child: Text("English"),
                ),
                verticalSpaceSmall,
                TextButton(
                  onPressed: () {
                    completer(SheetResponse(confirmed: true, data: 'Arabic'));
                  },
                  child: Text("Arabic"),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
