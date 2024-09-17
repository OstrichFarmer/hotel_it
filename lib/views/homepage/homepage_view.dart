import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hotel_it/data/recent_vacation.dart';
import 'package:hotel_it/views/homepage/homepage_viewmodel.dart';
import 'package:hotel_it/widgets/custom_button.dart';
import 'package:hotel_it/widgets/date_dropdown.dart';
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
        return GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Scaffold(
            resizeToAvoidBottomInset: true,
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
                  SizedBox(height: 25.h),
                  Container(
                      padding: EdgeInsets.all(12.r),
                      height: 185.h,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(8.r)),
                      ),
                      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.only(left: 10.w),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(5.r),
                                ),
                                border: Border.all()),
                            child: DropdownButtonHideUnderline(
                              child: DropdownButton2<String>(
                                isExpanded: true,
                                hint: Text(
                                  "Select Country",
                                  style: GoogleFonts.raleway(),
                                ),
                                items: model.countries
                                    .map((String country) =>
                                        DropdownMenuItem<String>(
                                            value: country,
                                            child: Text(
                                              country,
                                              style: GoogleFonts.raleway(),
                                              overflow: TextOverflow.ellipsis,
                                            )))
                                    .toList(),
                                value: model.selectedValue,
                                onChanged: model.onchanged,
                                iconStyleData: IconStyleData(
                                  icon: const Icon(
                                    Icons.location_on_outlined,
                                  ),
                                  iconSize: 34,
                                  iconEnabledColor: Theme.of(context)
                                      .colorScheme
                                      .onSecondaryFixed,
                                  iconDisabledColor: Colors.grey,
                                ),
                                dropdownStyleData: DropdownStyleData(
                                  maxHeight: 300,
                                  width: 200,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(14.r),
                                  ),
                                  offset: const Offset(0, -10),
                                  scrollbarTheme: ScrollbarThemeData(
                                    radius: const Radius.circular(40),
                                    thickness:
                                        WidgetStateProperty.all<double>(6),
                                    thumbVisibility:
                                        WidgetStateProperty.all<bool>(true),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: DateDropdown(
                                  label: "Check in",
                                  onDateSelected: (date) {
                                    model.selectCheckInDate(date);
                                  },
                                ),
                              ),
                              SizedBox(
                                width: 8.w,
                              ),
                              Expanded(
                                child: DateDropdown(
                                  label: "Check out",
                                  onDateSelected: (date) {
                                    model.selectCheckOutDate(date);
                                  },
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 8.h,
                          ),
                          CustomButton(
                            title: "Search",
                            onpressed: () {},
                            height: 40.h,
                          )
                        ],
                      )),
                  SizedBox(
                    height: 25.h,
                  ),
                  Divider(
                    height: 0,
                    thickness: 3.sp,
                    endIndent: 130,
                    indent: 130,
                  ),
                  SizedBox(height: 25.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Recent Vacation",
                        style: GoogleFonts.plusJakartaSans(
                            fontSize: 18.sp, fontWeight: FontWeight.w600),
                      ),
                      TextButton(
                          iconAlignment: IconAlignment.end,
                          onPressed: () {
                            model.goToRecentVacation();
                          },
                          child: Text(
                            "View more",
                            style: GoogleFonts.plusJakartaSans(
                                color: Colors.black),
                          ))
                    ],
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Expanded(
                    child: ListView.builder(
                      itemCount: 5,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        final hotel = recentVacations[index];
                        return RecentVacationCard(
                          image: hotel.image,
                          hotelName: hotel.hotelName,
                          location: hotel.location,
                          rating: hotel.averageRating.toString(),
                          price: "\$${hotel.price}",
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
