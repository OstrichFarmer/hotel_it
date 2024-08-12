import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hotel_it/services/network/constant.dart';
import 'package:hotel_it/views/select_country/select_country_viewmodel.dart';
import 'package:stacked/stacked.dart';

class SelectCountryView extends StatelessWidget {
  const SelectCountryView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SelectCountryViewModel>.reactive(
      viewModelBuilder: () => SelectCountryViewModel(),
      builder: (
        BuildContext context,
        SelectCountryViewModel model,
        Widget? child,
      ) {
        return Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
              leading: Padding(
                padding: EdgeInsets.only(left: 12.w, top: 15.h),
                child: GestureDetector(
                  onTap: Navigator.of(context).pop,
                  child: Text(
                    "Back",
                    style: GoogleFonts.poppins(),
                  ),
                ),
              ),
              actions: [
                Text(
                  "Step 2 of 2",
                  style: GoogleFonts.poppins(),
                ),
                SizedBox(
                  width: 15.w,
                )
              ],
            ),
            body: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.only(left: 15.w, right: 15.w, top: 100.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Text(
                        "Complete Your Set Up!",
                        style: GoogleFonts.raleway(
                            fontSize: 20.sp, fontWeight: FontWeight.w700),
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Text(
                      "For the purpose of proper default location search, you are needed to input your country of origin.",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.raleway(fontSize: 14.sp),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Text(
                      "Country",
                      style: GoogleFonts.raleway(
                        fontWeight: FontWeight.w500,
                        fontSize: 14.sp,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 10.w),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(15.r),
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
                              .map((String country) => DropdownMenuItem<String>(
                                  value: country,
                                  child: Text(
                                    country,
                                    style: GoogleFonts.raleway(),
                                    overflow: TextOverflow.ellipsis,
                                  )))
                              .toList(),
                          value: model.selectedValue,
                          onChanged: model.onchanged,
                          iconStyleData: const IconStyleData(
                            icon: Icon(
                              Icons.keyboard_arrow_down,
                            ),
                            iconSize: 34,
                            iconEnabledColor: primaryColor,
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
                              thickness: WidgetStateProperty.all<double>(6),
                              thumbVisibility:
                                  WidgetStateProperty.all<bool>(true),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ));
      },
    );
  }
}
