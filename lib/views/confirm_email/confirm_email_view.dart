import 'package:flutter/material.dart';
import 'package:hotel_it/views/confirm_email/confirm_email_viewmodel.dart';
import 'package:stacked/stacked.dart';

class ConfirmEmailView extends StatelessWidget {
  const ConfirmEmailView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ConfirmEmailViewModel>.reactive(
      viewModelBuilder: () => ConfirmEmailViewModel(),
      builder: (
        BuildContext context,
        ConfirmEmailViewModel model,
        Widget? child,
      ) {
        return Scaffold(
          body: Center(
            child: Text(
              'ConfirmEmailView',
            ),
          ),
        );
      },
    );
  }
}
