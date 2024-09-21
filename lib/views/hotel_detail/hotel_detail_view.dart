import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hotel_it/views/hotel_detail/hotel_detail_viewmodel.dart';
import 'package:hotel_it/widgets/cascading_circle_avatar.dart';
import 'package:hotel_it/widgets/custom_button.dart';
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
            leading: IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: Icon(
                Icons.chevron_left,
                size: 27.h,
              ),
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
                ),
                SizedBox(
                  height: 5.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.location_on_outlined,
                          size: 26.h,
                          color: Theme.of(context).colorScheme.onSecondaryFixed,
                        ),
                        Text(
                          "Lagos, Victoria Island",
                          style: GoogleFonts.plusJakartaSans(
                            fontSize: 14.sp,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      "/day",
                      style: GoogleFonts.plusJakartaSans(
                          fontSize: 16.sp, fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20.h,
                ),
                Container(
                  height: 80.h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(8.r)),
                    border: Border.all(
                        color: Theme.of(context).colorScheme.onSurface),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Flexible(
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Reviews",
                                style: GoogleFonts.plusJakartaSans(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16.sp),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Icon(
                                    Icons.star,
                                    color: Colors.green,
                                  ),
                                  Text(
                                    "4.5",
                                    style: GoogleFonts.plusJakartaSans(
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Text(
                                    "|",
                                    style: GoogleFonts.plusJakartaSans(
                                        fontWeight: FontWeight.w600),
                                  ),
                                  Text(
                                    "620 reviews",
                                    style: GoogleFonts.plusJakartaSans(
                                        fontWeight: FontWeight.w500),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      Flexible(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(child: CascadingAvatars()),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                SizedBox(
                  height: 105.h,
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "About",
                        style: GoogleFonts.plusJakartaSans(
                          fontSize: 17.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      RichText(
                        text: TextSpan(
                          text:
                              "This is a generated text This is a generated text This is a generated text This is a generated text This is a generated text...",
                          style: GoogleFonts.plusJakartaSans(
                            fontSize: 14.sp,
                            color: Theme.of(context).colorScheme.onBackground,
                          ),
                          children: [
                            TextSpan(
                              text: " Read more",
                              style: GoogleFonts.plusJakartaSans(
                                color: Theme.of(context)
                                    .colorScheme
                                    .onSecondaryFixed,
                                fontWeight: FontWeight.w600,
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  // Navigate to another page with full details
                                },
                            ),
                          ],
                        ),
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                    ],
                  ),
                ),
                CustomButton(
                  title: "Book a Room",
                  onpressed: () {},
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
