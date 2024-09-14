import 'package:flutter/material.dart';
import 'package:hotel_it/views/terms_and_conditions.dart/t_and_c_viewmodel.dart';
import 'package:stacked/stacked.dart';

class TAndCView extends StatelessWidget {
  const TAndCView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<TAndCViewModel>.reactive(
        viewModelBuilder: () => TAndCViewModel(),
        builder: (
          BuildContext context,
          TAndCViewModel model,
          Widget? child,
        ) {
          return const Scaffold(
            body: Center(),
          );
        });
  }
}