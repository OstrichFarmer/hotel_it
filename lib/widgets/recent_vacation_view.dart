import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class RecentVacationViewCard extends StatelessWidget {
  const RecentVacationViewCard({
    super.key,
    required this.hotelName,
    required this.location,
    this.checkInDate = "",
    this.checkOutDate = "",
    required this.image,
    required this.year,
  });
  final String hotelName, location, checkInDate, checkOutDate, image, year;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 100.w,
          height: 80.h,
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage(image)),
            borderRadius: BorderRadius.all(
              Radius.circular(5.r),
            ),
          ),
        ),
        SizedBox(
          width: 10.w,
        ),
        Flexible(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                hotelName,
                style: GoogleFonts.plusJakartaSans(
                    fontWeight: FontWeight.w600, fontSize: 15.sp),
              ),
              SizedBox(height: 5.h),
              Row(
                children: [
                  Icon(
                    Icons.location_on_outlined,
                    color: Theme.of(context).colorScheme.onSecondaryFixed,
                  ),
                  SizedBox(width: 5.w),
                  Text(location)
                ],
              ),
              SizedBox(height: 5.h),
              Row(
                children: [
                  Icon(
                    Icons.calendar_month,
                    color: Theme.of(context).colorScheme.onSecondaryFixed,
                  ),
                  SizedBox(width: 5.w),
                  Text("$checkInDate - $checkOutDate $year")
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
