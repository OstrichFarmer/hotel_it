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
          filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
          child: Container(
            color: Colors.black.withOpacity(0.2),
          ),
        ),
        Center(
          child: Container(
            width: 350.w,
            height: 245.h,
            padding: const EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary,
              borderRadius: BorderRadius.circular(15.r),
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    horizontalSpaceTiny,
                    Text(
                      "Select Language",
                      style: w700Style(
                          22, Theme.of(context).colorScheme.onSurface),
                    ),
                    const Spacer(),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        elevation: 8,
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
                verticalSpaceTwenty,
                ScreenTile(
                    onTap: () {
                      completer(
                          SheetResponse(confirmed: true, data: 'English'));
                    },
                    icon: Icons.close,
                    text: "English"),
                verticalSpaceSmall,
                ScreenTile(
                    onTap: () {
                      completer(SheetResponse(confirmed: true, data: 'Arabic'));
                    },
                    icon: Icons.mail,
                    text: "Arabic")
              ],
            ),
          ),
        ),
      ],
    );
  }
}
