import 'package:flutter/material.dart';
import 'package:hotel_it/views/confirm_email/confirm_email_viewmodel.dart';
import 'package:stacked/stacked.dart';

class ConfirmEmailOtpView extends StatelessWidget {
  const ConfirmEmailOtpView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ConfirmEmailOtpViewModel>.reactive(
      viewModelBuilder: () => ConfirmEmailOtpViewModel(),
      builder: (
        BuildContext context,
        ConfirmEmailOtpViewModel model,
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
