import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

TextStyle w700Style(
  double size,
  Color color, {
  TextDecoration? decoration,
  double? height,
}) {
  return GoogleFonts.poppins(
    fontSize: size.sp,
    color: color,
    fontWeight: FontWeight.w600,
    height: 2.2,
    decoration: decoration,
  );
}

TextStyle w600Style(
  double size,
  Color color, {
  TextDecoration? decoration,
  double? height,
}) {
  return GoogleFonts.poppins(
    fontSize: size.sp,
    color: color,
    fontWeight: FontWeight.w600,
    height: 1.7,
    decoration: decoration,
  );
}

TextStyle w400Style(
  double size,
  Color color, {
  TextDecoration? decoration,
  double? height,
}) {
  return GoogleFonts.poppins(
    fontSize: size.sp,
    color: color,
    fontWeight: FontWeight.w400,
    decoration: decoration,
    height: 1.4,
  );
}
