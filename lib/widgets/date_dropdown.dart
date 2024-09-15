import 'package:flutter/material.dart';
import 'package:flutter_calendar_carousel/flutter_calendar_carousel.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class DateDropdown extends StatefulWidget {
  final void Function(String date) onDateSelected;

  const DateDropdown(
      {super.key, required this.onDateSelected, required this.label});
  final String label;

  @override
  DateDropdownState createState() => DateDropdownState();
}

class DateDropdownState extends State<DateDropdown> {
  String? _selectedDate;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _showDatePicker(context);
      },
      child: InputDecorator(
        decoration: InputDecoration(
          suffixIcon: const Icon(
            Icons.keyboard_arrow_down,
            color: Colors.black,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(4),
          ),
          hintText: widget.label,
        ),
        child: Text(
          _selectedDate ?? widget.label,
          style: GoogleFonts.poppins(fontSize: 16),
        ),
      ),
    );
  }

  void _showDatePicker(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(16.r),
              bottom: Radius.circular(16.r),
            ),
          ),
          insetPadding: EdgeInsets.only(
            top: MediaQuery.of(context).size.height * 0.15,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                padding: EdgeInsets.all(16.h),
                height: 300.h,
                width: 300.w,
                child: CalendarCarousel(
                  onDayPressed: (date, events) {
                    setState(() {
                      _selectedDate = '${date.day}-${date.month}-${date.year}';
                      widget.onDateSelected(_selectedDate!);
                    });
                    Navigator.pop(context);
                  },
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
