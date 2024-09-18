import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hotel_it/views/hotel_detail/hotel_detail_viewmodel.dart';
import 'package:stacked/stacked.dart';

class HotelDetailView extends StatelessWidget {
  const HotelDetailView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HotelDetailViewModel>.reactive(
      viewModelBuilder: () => HotelDetailViewModel(),
      builder: (
        BuildContext context,
        HotelDetailViewModel model,
        Widget? child,
      ) {
        return Scaffold(
          backgroundColor: Theme.of(context).colorScheme.primary,
          appBar: AppBar(
            backgroundColor: Theme.of(context).colorScheme.primary,
            leading: Icon(
              Icons.chevron_left,
              size: 27.h,
            ),
            centerTitle: true,
            title: Text(
              "Details",
              style: GoogleFonts.plusJakartaSans(
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          body: Padding(
            padding: EdgeInsets.only(
              left: 15.w,
              right: 15.w,
              top: 20.h,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 200.h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(8.r)),
                    image: const DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage("assets/images/hotel5.png"),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Lagos Continental Hotel",
                      style: GoogleFonts.plusJakartaSans(
                          fontSize: 16.sp, fontWeight: FontWeight.w600),
                    ),
                    Text(
                      "\$200",
                      style: GoogleFonts.plusJakartaSans(
                          fontSize: 16.sp, fontWeight: FontWeight.w600),
                    )
                  ],
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
