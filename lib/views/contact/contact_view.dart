import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hotel_it/common/app_strings.dart';
import 'package:hotel_it/common/custom_textstyles.dart';
import 'package:hotel_it/common/ui_helpers.dart';
import 'package:hotel_it/views/contact/contact_viewmodel.dart';
import 'package:hotel_it/widgets/custom_button.dart';
import 'package:hotel_it/widgets/custom_text_field.dart';
import 'package:stacked/stacked.dart';

class ContactView extends StatelessWidget {
  const ContactView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ContactViewModel>.reactive(
        viewModelBuilder: () => ContactViewModel(),
        builder: (
          BuildContext context,
          ContactViewModel model,
          Widget? child,
        ) {
          return Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              title: Text(
                "Contact",
                style: w600Style(17, Theme.of(context).colorScheme.onSurface),
              ),
            ),
            body: Padding(
              padding: EdgeInsets.only(left: 20.w, right: 20.w),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      ksContactRequest,
                      style: w400Style(
                          17, Theme.of(context).colorScheme.onSurfaceVariant),
                    ),
                    verticalSpaceSmall,
                    const CustomTextField(title: 'Name'),
                    verticalSpaceSmall,
                    Text(
                      'Please enter a valid email address',
                      style: w400Style(
                          10, Theme.of(context).colorScheme.onSecondaryFixed),
                    ),
                    const CustomTextField(title: 'Email'),
                    verticalSpaceSmall,
                    const CustomTextField(title: 'Phone number'),
                    verticalSpaceSmall,
                    const CustomTextField(title: 'Let us know how we can help'),
                    verticalSpaceTwenty,
                    const Center(
                      child: DashedRectangle(),
                    ),
                    verticalSpaceTiny,
                    Text(
                      "Attach file. File size of your documents should not exceed 10MB",
                      style: w400Style(10,
                          Theme.of(context).colorScheme.onTertiaryFixedVariant),
                    ),
                    verticalSpaceFifteen,
                    CustomButton(title: "SUBMIT", onpressed: () {})
                  ],
                ),
              ),
            ),
          );
        });
  }
}

class DashedRectangle extends StatelessWidget {
  const DashedRectangle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: CustomPaint(
        painter: DashedRectPainter(),
        child: Container(
          width: 290.w,
          height: 105.h,
          alignment: Alignment.center,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.file_upload_outlined,
                  size: 17.h, color: Theme.of(context).colorScheme.outline),
              horizontalSpaceTiny,
              Text(
                "Upload Additional file",
                style: w400Style(14, Theme.of(context).colorScheme.outline),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DashedRectPainter extends CustomPainter {
  final double dashWidth;
  final double dashGap;
  final Color color;

  DashedRectPainter({
    this.dashWidth = 5.0,
    this.dashGap = 5.0,
    this.color = Colors.grey,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..strokeWidth = 1
      ..style = PaintingStyle.stroke;

    final path = Path();

    double startX = 0;
    while (startX < size.width) {
      path.moveTo(startX, 0);
      path.lineTo(startX + dashWidth, 0);
      startX += dashWidth + dashGap;
    }

    double startY = 0;
    while (startY < size.height) {
      path.moveTo(size.width, startY);
      path.lineTo(size.width, startY + dashWidth);
      startY += dashWidth + dashGap;
    }

    startX = 0;
    while (startX < size.width) {
      path.moveTo(startX, size.height);
      path.lineTo(startX + dashWidth, size.height);
      startX += dashWidth + dashGap;
    }

    startY = 0;
    while (startY < size.height) {
      path.moveTo(0, startY);
      path.lineTo(0, startY + dashWidth);
      startY += dashWidth + dashGap;
    }

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
