import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class RecentVacationCard extends StatelessWidget {
  const RecentVacationCard({
    super.key,
    required this.image,
    required this.location,
    required this.hotelName,
    required this.rating,
    required this.price,
  });

  final String image, location, hotelName, rating, price;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 180.w,
      height: 140.h,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.r),
        ),
        elevation: 5,
        child: Stack(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(left: 5.w, right: 5.w, top: 5.h),
              height: 110.h,
              width: double.infinity, // Adjusts to fit width of SizedBox
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(image), // Update to your image
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.vertical(top: Radius.circular(8.r)),
              ),
            ),
            Positioned(
              top: 120.h,
              child: Padding(
                padding: EdgeInsets.only(
                    left: 5.w, right: 3.w), // Adjust padding as needed
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 120,
                      child: Text(
                        hotelName,
                        overflow: TextOverflow.ellipsis,
                        style: GoogleFonts.poppins(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 9.w),
                      child: Text(
                        "$rating ⭐",
                        style: GoogleFonts.poppins(
                          fontSize: 14.sp,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: EdgeInsets.all(8.0.w), // Adjust padding as needed
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 120,
                      child: Text(
                        location,
                        style: GoogleFonts.poppins(
                          fontSize: 12.sp,
                        ),
                      ),
                    ),
                    Icon(
                      Icons.bookmark_outline,
                      size: 16.h,
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 20,
              right: 20,
              child: Container(
                padding: EdgeInsets.all(2.h),
                width: 50.w,
                height: 20.h,
                color: Colors.white,
                child: Center(child: Text(price)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
