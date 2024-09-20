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
            height: 240.h,
            padding: EdgeInsets.all(10.w),
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
                verticalSpaceSmall,
                Row(
                  children: [
                    horizontalSpaceSmall,
                    Text(
                      "Select Language",
                      style: w700Style(
                          22, Theme.of(context).colorScheme.onSurface),
                    ),
                    const Spacer(),
                    Material(
                      elevation: 2.0,
                      shape: const CircleBorder(),
                      child: IconButton(
                        onPressed: () {
                          widget.completer(SheetResponse(confirmed: false));
                        },
                        icon: Icon(
                          Icons.close,
                          size: 24,
                          color: Theme.of(context).colorScheme.onSecondaryFixed,
                        ),
                      ),
                    ),
                  ],
                ),
                verticalSpaceMedium,
                _languageOption('English', 'assets/images/uk_flag.png'),
                verticalSpaceTwenty,
                _languageOption('Arabic', 'assets/images/qa_flag.png'),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _languageOption(String language, String flagPath) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedLanguage = language;
        });
        widget.completer(SheetResponse(confirmed: true, data: language));
      },
      child: Container(
        height: 50.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.r),
          border: Border.all(
              color: Theme.of(context).colorScheme.outline, width: 1),
        ),
        child: Padding(
          padding: EdgeInsets.only(left: 10.w, right: 10.w),
          child: Row(
            children: [
              Image.asset(
                flagPath,
                width: 30,
                height: 20,
              ),
              horizontalSpaceSmall,
              Text(
                language,
                style: w700Style(16, Theme.of(context).colorScheme.onSurface),
              ),
              const Spacer(),
              Theme(
                data: Theme.of(context).copyWith(
                    unselectedWidgetColor:
                        Theme.of(context).colorScheme.onTertiaryFixedVariant),
                child: Radio<String>(
                  value: language,
                  groupValue: selectedLanguage,
                  activeColor: Theme.of(context).colorScheme.onSecondaryFixed,
                  onChanged: (value) {
                    setState(() {
                      selectedLanguage = value;
                    });
                    widget.completer(
                        SheetResponse(confirmed: true, data: language));
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
