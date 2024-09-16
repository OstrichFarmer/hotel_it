import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
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
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 100.w,
                        height: 80.h,
                        color: Colors.amber,
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
                              "Lagos Continental hotel",
                              style: GoogleFonts.plusJakartaSans(
                                  fontWeight: FontWeight.w600, fontSize: 15.sp),
                            ),
                            SizedBox(height: 5.h),
                            Row(
                              children: [
                                Icon(
                                  Icons.location_on_outlined,
                                  color: Theme.of(context)
                                      .colorScheme
                                      .onSecondaryFixed,
                                ),
                                SizedBox(width: 5.w),
                                const Text("Lagos Island")
                              ],
                            ),
                            SizedBox(height: 5.h),
                            Row(
                              children: [
                                const Icon(Icons.calendar_month),
                                SizedBox(width: 5.w),
                                const Text("2 October - 3 October 2022")
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ));
      },
    );
  }
}
