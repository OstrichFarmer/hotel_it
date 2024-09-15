import 'package:flutter/material.dart';
import 'package:hotel_it/views/contact/contact_viewmodel.dart';
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
          return const Scaffold(
            body: Center(),
          );
        });
  }
}
