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
    );
  }
}
