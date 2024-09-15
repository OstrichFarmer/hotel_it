import 'package:flutter/material.dart';
import 'package:hotel_it/views/schedule_view/schedule_viewmodel.dart';
import 'package:stacked/stacked.dart';

class ScheduleView extends StatelessWidget {
  const ScheduleView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ScheduleViewModel>.reactive(
      viewModelBuilder: () => ScheduleViewModel(),
      builder: (
        BuildContext context,
        ScheduleViewModel model,
        Widget? child,
      ) {
        return const Scaffold(
          body: Center(
            child: Text(
              'ScheduleView',
            ),
          ),
        );
      },
    );
  }
}
