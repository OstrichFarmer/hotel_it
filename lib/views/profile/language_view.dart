import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hotel_it/common/custom_textstyles.dart';
import 'package:hotel_it/common/ui_helpers.dart';
import 'package:hotel_it/widgets/screen_tile.dart';
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
          filter: ImageFilter.blur(sigmaX: 4.0, sigmaY: 4.0),
          child: Container(
            color: Colors.black.withOpacity(0.2),
          ),
        ),
        Center(
          child: Container(
            width: 350.w,
            height: 250.h,
            padding: EdgeInsets.only(left: 10.w, right: 10.w),
            decoration: BoxDecoration(
              border: Border.all(
                color: Theme.of(context).colorScheme.outline,
                width: 1,
              ),
              color: Theme.of(context).colorScheme.primary,
              borderRadius: BorderRadius.circular(15.r),
            ),
            child: Column(
              children: [
                verticalSpaceFifteen,
                Row(
                  children: [
                    horizontalSpaceSmall,
                    Text(
                      "Select Language",
                      style: w700Style(
                          22, Theme.of(context).colorScheme.onSurface),
                    ),
                    const Spacer(),
                    ElevatedButton(
                      onPressed: () {
                        completer(SheetResponse(confirmed: false));
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            Theme.of(context).colorScheme.onSecondaryContainer,
                        elevation: 0,
                        shape: const CircleBorder(),
                      ),
                      child: Icon(
                        Icons.close,
                        size: 16,
                        color:
                            Theme.of(context).colorScheme.onSecondaryContainer,
                      ),
                    ),
                  ],
                ),
                verticalSpaceMedium,
                ScreenTile(
                  onTap: () {
                    completer(SheetResponse(confirmed: true, data: 'English'));
                  },
                  icon: Icons.language,
                  text: "English",
                ),
                verticalSpaceTwenty,
                ScreenTile(
                  onTap: () {
                    completer(SheetResponse(confirmed: true, data: 'Arabic'));
                  },
                  icon: Icons.language,
                  text: "Arabic",
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
