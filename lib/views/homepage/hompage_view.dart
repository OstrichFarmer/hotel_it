import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hotel_it/data/hotel_data.dart'; // Assuming this is where Hotel class and hotels list are imported
import 'package:hotel_it/views/homepage/homepage_viewmodel.dart';
import 'package:hotel_it/widgets/recent_vacation_card.dart';
import 'package:stacked/stacked.dart';

class HomePageView extends StatelessWidget {
  const HomePageView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomePageViewModel>.reactive(
      viewModelBuilder: () => HomePageViewModel(),
      builder: (
        BuildContext context,
        HomePageViewModel model,
        Widget? child,
      ) {
        return Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            centerTitle: true,
            title: Text(
              'Home',
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w600,
              ),
            ),
            actions: [
              const Icon(Icons.notifications_outlined),
              SizedBox(width: 10.w),
            ],
          ),
          body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Hello, Big Ayat 👋",
                  style: GoogleFonts.plusJakartaSans(
                      fontSize: 18.sp, fontWeight: FontWeight.w600),
                ),
                Text(
                  "Where do you want to stay?",
                  style: GoogleFonts.plusJakartaSans(),
                ),
                SizedBox(height: 30.h),
                Container(
                  height: 182.h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(8.r)),
                  ),
                  child: const Center(
                    child: Text("Featured Hotels or Promotions Here"),
                  ),
                ),
                SizedBox(height: 40.h),
                Expanded(
                  child: ListView.builder(
                    itemCount: hotels.length,
                    //      scrollDirection: Axis.vertical,
                    itemBuilder: (context, index) {
                      final hotel = hotels[index];
                      return RecentVacationCard(
                        image: hotel.imageUrl,
                        hotelName: hotel.name,
                        location: hotel.location,
                        rating: hotel.averageRating.toString(),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
