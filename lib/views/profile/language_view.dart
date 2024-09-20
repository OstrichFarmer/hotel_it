import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hotel_it/common/custom_textstyles.dart';
import 'package:hotel_it/common/ui_helpers.dart';
import 'package:stacked_services/stacked_services.dart';

class LanguageView extends StatefulWidget {
  final SheetRequest request;
  final Function(SheetResponse) completer;

  const LanguageView({
    super.key,
    required this.request,
    required this.completer,
  });

  @override
  State<LanguageView> createState() => _LanguageViewState();
}

class _LanguageViewState extends State<LanguageView> {
  String? selectedLanguage = 'English';
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
                        widget.completer(SheetResponse(confirmed: false));
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
                GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedLanguage = 'English';
                    });
                    widget.completer(
                        SheetResponse(confirmed: true, data: 'English'));
                  },
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/flags/english_flag.png',
                        width: 30,
                        height: 20,
                      ),
                      horizontalSpaceSmall,
                      Text(
                        'English',
                        style: w700Style(
                            16, Theme.of(context).colorScheme.onSurface),
                      ),
                      const Spacer(),
                      Radio<String>(
                        value: 'English',
                        groupValue: selectedLanguage,
                        onChanged: (value) {
                          setState(() {
                            selectedLanguage = value;
                          });
                          widget.completer(
                              SheetResponse(confirmed: true, data: 'English'));
                        },
                      ),
                    ],
                  ),
                ),
                verticalSpaceTwenty,
                GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedLanguage = 'Arabic';
                    });
                    widget.completer(
                        SheetResponse(confirmed: true, data: 'Arabic'));
                  },
                  child: Row(
                    children: [
                      // Flag Image (replace with actual flag path)
                      Image.asset(
                        'assets/flags/arabic_flag.png',
                        width: 30,
                        height: 30,
                      ),
                      horizontalSpaceSmall,
                      Text(
                        'Arabic',
                        style: w700Style(
                            16, Theme.of(context).colorScheme.onSurface),
                      ),
                      const Spacer(),
                      Radio<String>(
                        value: 'Arabic',
                        groupValue: selectedLanguage,
                        onChanged: (value) {
                          setState(() {
                            selectedLanguage = value;
                          });
                          widget.completer(
                              SheetResponse(confirmed: true, data: 'Arabic'));
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
