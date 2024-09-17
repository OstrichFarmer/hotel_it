import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hotel_it/data/recent_vacation.dart';
import 'package:hotel_it/views/recent_vacation/recent_vacation_viewmodel.dart';
import 'package:hotel_it/widgets/recent_vacation_view.dart';
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
            backgroundColor: Theme.of(context).colorScheme.primary,
            appBar: AppBar(
              backgroundColor: Theme.of(context).colorScheme.primary,
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
                        itemBuilder: (BuildContext context, index) {
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
                        separatorBuilder: (BuildContext context, index) {
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
