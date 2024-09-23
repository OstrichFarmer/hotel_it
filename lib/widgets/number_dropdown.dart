import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NumberDropdown extends StatelessWidget {
  final int? selectedNumber;
  final ValueChanged<int?> onChanged;

  const NumberDropdown({
    super.key,
    this.selectedNumber,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50.w, // Width of the container
      height: 25.h, // Height of the container
      padding: EdgeInsets.symmetric(horizontal: 8.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.r),
        border: Border.all(color: Theme.of(context).colorScheme.onSurface),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<int>(
          icon: const Icon(Icons.keyboard_arrow_down),
          value: selectedNumber,
          items: List.generate(5, (index) {
            int value = index + 1;
            return DropdownMenuItem<int>(
              value: value,
              child: Text(value.toString(), style: TextStyle(fontSize: 14.sp)),
            );
          }),
          onChanged: onChanged,
          isDense: true,
          dropdownColor: Theme.of(context).colorScheme.surface,
          style: TextStyle(
            color: Theme.of(context).colorScheme.onSurface,
            fontSize: 14.sp,
          ),
        ),
      ),
    );
  }
}
