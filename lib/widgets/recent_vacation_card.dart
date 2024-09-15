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
  });

  final String image, location, hotelName, rating;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 180.w,
      height: 190.h,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.r),
        ),
        elevation: 5,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
            Padding(
              padding: EdgeInsets.all(8.0.w), // Adjust padding as needed
              child: SizedBox(
                width: double.infinity, // Ensures the Row fits within SizedBox
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
                    Row(
                      children: [
                        Text(
                          rating,
                          style: GoogleFonts.poppins(
                            fontSize: 14.sp,
                          ),
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.orange,
                          size: 16.h,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0.w), // Adjust padding as needed
              child: SizedBox(
                width: double.infinity, // Ensures the Row fits within SizedBox
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      location,
                      style: GoogleFonts.poppins(
                        fontSize: 12.sp,
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
          ],
        ),
      ),
    );
  }
}
