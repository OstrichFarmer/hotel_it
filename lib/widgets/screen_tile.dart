import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hotel_it/common/custom_textstyles.dart';
import 'package:hotel_it/common/ui_helpers.dart';

class ScreenTile extends StatelessWidget {
  const ScreenTile({
    super.key,
    required this.onTap,
    required this.icon,
    required this.text,
  });

  final IconData icon;
  final String text;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 350.w,
        height: 60.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.r),
          border: Border.all(
              color: Theme.of(context).colorScheme.outline, width: 1),
        ),
        child: Padding(
          padding: EdgeInsets.only(left: 10.w, right: 10.w),
          child: Row(
            children: [
              Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.sp),
                    color: Theme.of(context).colorScheme.onSecondaryFixed,
                  ),
                  width: 30.w,
                  height: 30.h,
                  padding: EdgeInsets.only(
                      left: 5.sp, bottom: 5.sp, top: 5.sp, right: 5.sp),
                  child: Icon(
                    icon,
                    size: 20.h,
                    color: Theme.of(context).colorScheme.onSecondaryContainer,
                  )),
              horizontalSpaceSmall,
              Text(
                text,
                style: w600Style(14, Theme.of(context).colorScheme.onSurface),
              ),
              const Spacer(),
              Icon(
                Icons.arrow_forward,
                size: 17.sp,
                color: Theme.of(context).colorScheme.onSecondaryFixed,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class LanguageTile extends StatelessWidget {
  const LanguageTile({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        height: 60.h,
        width: 350.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.r),
          border: Border.all(
            color: Theme.of(context).colorScheme.onSecondaryFixed,
            width: 1,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.only(left: 10.w, right: 10.w),
          child: Row(
            children: [Container(decoration: BoxDecoration(border: Border.all(color: Theme.of(context).colorScheme.)),)],
          ),
        ),
      ),
    );
  }
}
