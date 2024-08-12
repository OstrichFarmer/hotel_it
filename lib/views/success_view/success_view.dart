import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hotel_it/services/theme/theme.dart';
import 'package:hotel_it/views/success_view/success_viewmodel.dart';
import 'package:hotel_it/widgets/custom_button.dart';
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
          backgroundColor: lightTheme.primaryColor,
          body: Padding(
            padding: EdgeInsets.only(left: 20.w, right: 20.w),
            child: Column(
              children: [
                SizedBox(
                  height: 200.h,
                ),
                Center(
                  child: Image.asset("assets/images/success.png"),
                ),
                SizedBox(
                  height: 200.h,
                ),
                CustomButton(
                    title: "SIGN IN",
                    onpressed: () {
                      model.goToSignIn();
                    })
              ],
            ),
          ),
        );
      },
    );
  }
}
