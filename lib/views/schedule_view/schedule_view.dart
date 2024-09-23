import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hotel_it/services/network/constant.dart';
import 'package:hotel_it/views/schedule_view/schedule_viewmodel.dart';
import 'package:hotel_it/widgets/number_dropdown.dart';
import 'package:stacked/stacked.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

class ScheduleView extends StatelessWidget {
  const ScheduleView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ScheduleViewModel>.reactive(
      viewModelBuilder: () => ScheduleViewModel(),
      builder: (
        BuildContext context,
        ScheduleViewModel model,
        Widget? child,
      ) {
        return Scaffold(
            backgroundColor: Theme.of(context).colorScheme.primary,
            appBar: AppBar(
              backgroundColor: Theme.of(context).colorScheme.primary,
              centerTitle: true,
              title: Text(
                "Schedule",
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            body: Padding(
              padding: EdgeInsets.only(
                left: 15.w,
                right: 15.w,
                top: 20.h,
                bottom: 20.h,
              ),
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border:
                          Border.all(color: const Color.fromRGBO(0, 0, 0, 1)),
                    ),
                    child: SfDateRangePicker(
                      monthCellStyle: DateRangePickerMonthCellStyle(
                        todayTextStyle: TextStyle(
                            color:
                                Theme.of(context).colorScheme.onSecondaryFixed),
                        textStyle: TextStyle(
                            color: Theme.of(context).colorScheme.onSurface),
                      ),
                      headerStyle: DateRangePickerHeaderStyle(
                          backgroundColor:
                              Theme.of(context).colorScheme.primary),
                      selectionTextStyle: TextStyle(
                          color: Theme.of(context).colorScheme.onSurface),
                      startRangeSelectionColor:
                          Theme.of(context).colorScheme.onSecondaryFixed,
                      endRangeSelectionColor:
                          Theme.of(context).colorScheme.onSecondaryFixed,
                      todayHighlightColor:
                          Theme.of(context).colorScheme.onSecondaryFixed,
                      selectionColor:
                          Theme.of(context).colorScheme.onSecondaryFixed,
                      rangeSelectionColor: lightGreen,
                      backgroundColor: Theme.of(context).colorScheme.primary,
                      view: DateRangePickerView.month,
                      selectionMode: DateRangePickerSelectionMode.range,
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Row(
                    children: [
                      Text(
                        "Rooms",
                        style: GoogleFonts.plusJakartaSans(),
                      ),
                      SizedBox(
                        width: 5.w,
                      ),
                      NumberDropdown(
                          selectedNumber: model.selectedRoom,
                          onChanged: (value) => model.setSelectedRoom),
                      SizedBox(
                        width: 15.w,
                      ),
                      Text(
                        "Adults",
                        style: GoogleFonts.plusJakartaSans(),
                      ),
                      SizedBox(
                        width: 5.w,
                      ),
                      NumberDropdown(
                          selectedNumber: model.selectedRoom,
                          onChanged: (value) =>
                              model.setSelectedNumberOfAdults),
                      SizedBox(
                        width: 15.w,
                      ),
                      Text(
                        "Children",
                        style: GoogleFonts.plusJakartaSans(),
                      ),
                      SizedBox(
                        width: 5.w,
                      ),
                      NumberDropdown(
                          selectedNumber: model.selectedRoom,
                          onChanged: (value) => model.selectedNumberOfChildren),
                    ],
                  )
                ],
              ),
            ));
      },
    );
  }
}
