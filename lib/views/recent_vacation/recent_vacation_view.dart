import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hotel_it/data/recent_vacation.dart';
import 'package:hotel_it/views/recent_vacation/recent_vacation_viewmodel.dart';
import 'package:stacked/stacked.dart';

class RecentVacationView extends StatelessWidget {
  const RecentVacationView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<RecentVacationViewModel>.reactive(
      viewModelBuilder: () => RecentVacationViewModel(),
      builder: (
        BuildContext context,
        RecentVacationViewModel model,
        Widget? child,
      ) {
        return Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
              leading: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(
                  Icons.chevron_left,
                  size: 27.h,
                ),
              ),
              centerTitle: true,
              title: Text(
                "Recent Vacation",
                style: GoogleFonts.plusJakartaSans(),
              ),
            ),
            body: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Expanded(
                    child: ListView.separated(
                        itemBuilder: (BuildContext, index) {
                          final recentVacation = recentVacations[index];
                          return RecentVacationViewCard(
                            image: recentVacation.image,
                            checkInDate: recentVacation.checkInDate,
                            checkOutDate: recentVacation.checkOutDate,
                            year: recentVacation.year.toString(),
                            hotelName: recentVacation.hotelName,
                            location: recentVacation.location,
                          );
                        },
                        separatorBuilder: (BuildContext, index) {
                          return SizedBox(
                            height: 20..h,
                          );
                        },
                        itemCount: recentVacations.length),
                  ),
                ],
              ),
            ));
      },
    );
  }
}

class RecentVacationViewCard extends StatelessWidget {
  const RecentVacationViewCard({
    super.key,
    required this.hotelName,
    required this.location,
    required this.checkInDate,
    required this.checkOutDate,
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
