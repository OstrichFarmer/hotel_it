import 'package:flutter/material.dart';
import 'package:hotel_it/views/profile/profile_viewmodel.dart';
import 'package:stacked/stacked.dart';

class AboutUsView extends StatelessWidget {
  const AboutUsView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ProfileViewModel>.reactive(
        viewModelBuilder: () => ProfileViewModel(),
        builder: (
          BuildContext context,
          ProfileViewModel model,
          Widget? child,
        ) {
          return const Scaffold(
            body: Center(),
          );
        });;
  }
}