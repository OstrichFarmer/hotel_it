import 'package:flutter/material.dart';
import 'package:hotel_it/views/success_view/success_viewmodel.dart';
import 'package:stacked/stacked.dart';

class SuccessView extends StatelessWidget {
  const SuccessView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SuccessViewModel>.reactive(
      viewModelBuilder: () => SuccessViewModel(),
      builder: (
        BuildContext context,
        SuccessViewModel model,
        Widget? child,
      ) {
        return Scaffold(
          body: Center(
            child: Text(
              'SuccessView',
            ),
          ),
        );
      },
    );
  }
}
