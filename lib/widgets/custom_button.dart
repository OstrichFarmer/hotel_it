import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hotel_it/services/network/constant.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.title,
    required this.onpressed,
    this.height = 60,
  });
  final String title;
  final Function() onpressed;
  final double height;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            minimumSize: Size(double.infinity, height.h),
            backgroundColor: primaryColor),
        onPressed: onpressed,
        child: Text(
          title,
          style:
              GoogleFonts.poppins(fontSize: 18.sp, fontWeight: FontWeight.w600),
        ));
  }
}
