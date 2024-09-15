import 'package:flutter/material.dart';
import 'package:flutter_calendar_carousel/flutter_calendar_carousel.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart'; // or any calendar package

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
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return Container(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // Replace with your calendar widget
              SizedBox(
                height: 300.h,
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
              const SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(
                  'Confirm',
                  style: GoogleFonts.poppins(color: Colors.black),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
