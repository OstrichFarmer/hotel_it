import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LocationTextfield extends StatelessWidget {
  const LocationTextfield({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50.h,
      child: TextField(
        decoration: InputDecoration(
          prefixIcon: const Icon(
            Icons.location_on_outlined,
            color: Colors.black,
          ),
          border: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.black),
            borderRadius: BorderRadius.all(
              Radius.circular(4.r),
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(
                color: Colors.black), // Same border when focused
            borderRadius: BorderRadius.all(
              Radius.circular(4.r),
            ),
          ),
          hintText: 'Enter a location',
        ),
      ),
    );
  }
}
