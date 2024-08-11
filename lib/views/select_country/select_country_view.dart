import 'package:flutter/material.dart';
import 'package:hotel_it/views/select_country/select_country_viewmodel.dart';
import 'package:stacked/stacked.dart';

class SelectCountryView extends StatelessWidget {
  const SelectCountryView({Key? key}) : super(key: key);

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
