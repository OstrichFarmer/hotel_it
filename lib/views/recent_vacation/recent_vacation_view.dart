import 'package:flutter/material.dart';
import 'package:hotel_it/views/recent_vacation/recent_vacation_viewmodel.dart';
import 'package:stacked/stacked.dart';

class RecentVacationView extends StatelessWidget {
  const RecentVacationView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<RecentVacationViewModel>.reactive(
      viewModelBuilder: () => RecentVacationViewModel(),
      builder: (
        BuildContext context,
        RecentVacationViewModel model,
        Widget? child,
      ) {
        return Scaffold(
          body: Center(
            child: Text(
              'RecentVacationView',
            ),
          ),
        );
      },
    );
  }
}
