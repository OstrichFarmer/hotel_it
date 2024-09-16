import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hotel_it/common/app_strings.dart';
import 'package:hotel_it/common/custom_textstyles.dart';
import 'package:hotel_it/common/ui_helpers.dart';
import 'package:hotel_it/views/contact/contact_viewmodel.dart';
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
                    verticalSpaceTiny,
                    Text(
                      'Please enter a valid email address',
                      style: w400Style(
                          10, Theme.of(context).colorScheme.onSecondaryFixed),
                    ),
                    const CustomTextField(title: 'Email'),
                    verticalSpaceTiny,
                    const CustomTextField(title: 'Phone number'),
                    verticalSpaceTiny,
                    const CustomTextField(title: 'Let us know how we can help')
                  ],
                ),
              ),
            ),
          );
        });
  }
}
