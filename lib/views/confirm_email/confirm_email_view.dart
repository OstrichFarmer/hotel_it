import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hotel_it/services/network/constant.dart';
import 'package:hotel_it/views/confirm_email/confirm_email_viewmodel.dart';
import 'package:hotel_it/widgets/custom_otp.dart';
import 'package:stacked/stacked.dart';

class ConfirmEmailOtpView extends StatelessWidget {
  const ConfirmEmailOtpView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ConfirmEmailOtpViewModel>.reactive(
      viewModelBuilder: () => ConfirmEmailOtpViewModel(),
      builder: (
        BuildContext context,
        ConfirmEmailOtpViewModel model,
        Widget? child,
      ) {
        return GestureDetector(
          onTap: FocusScope.of(context).unfocus,
          child: Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
              actions: [
                Text(
                  "Step 1 of 2",
                  style: GoogleFonts.poppins(),
                ),
                SizedBox(
                  width: 15.w,
                )
              ],
            ),
            body: Stack(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    top: 50.h,
                    right: 15.w,
                    left: 15.w,
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Center(
                          child: Text(
                            "Confirm Email Address",
                            style: GoogleFonts.raleway(fontSize: 22.sp),
                          ),
                        ),
                        Text(
                          "Enter the 4 digit verification code just sent to ********@gmail.com",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.raleway(),
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        OTPField(
                          onComplete: () {
                            FocusScope.of(context).unfocus();
                            model.goToSelectCountry();
                          },
                        ),
                        SizedBox(
                          height: 15.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Didn't receive the code?",
                              style: GoogleFonts.raleway(),
                            ),
                            TextButton(
                                onPressed: () {},
                                child: Text(
                                  "Resend",
                                  style:
                                      GoogleFonts.raleway(color: primaryColor),
                                )),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                if (model.isLoading)
                  Container(
                    color: Colors.black54, // Semi-transparent background
                    child: const Center(
                      child: CircularProgressIndicator(
                        color: primaryColor, // Or any other color you want
                      ),
                    ),
                  ),
              ],
            ),
          ),
        );
      },
    );
  }
}
