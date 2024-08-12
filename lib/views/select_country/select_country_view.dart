import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
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
          body: Center(
            child: Text(
              'SelectCountryView',
            ),
          ),
        );
      },
    );
  }
}
