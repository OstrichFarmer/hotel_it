import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hotel_it/views/auth/auth_viewmodel.dart';
import 'package:hotel_it/widgets/custom_password_textfield.dart';
import 'package:hotel_it/widgets/custom_textField.dart';
import 'package:stacked/stacked.dart';

class AuthView extends StatelessWidget {
  const AuthView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<AuthViewModel>.reactive(
      viewModelBuilder: () => AuthViewModel(),
      builder: (
        BuildContext context,
        AuthViewModel model,
        Widget? child,
      ) {
        return Scaffold(
          body: LayoutBuilder(
            builder: (context, constraints) {
              return SingleChildScrollView(
                child: ConstrainedBox(
                  constraints: BoxConstraints(
                    minHeight: constraints.maxHeight,
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(top: 60.h),
                    child: IntrinsicHeight(
                      child: Column(
                        children: [
                          Center(
                            child: Image.asset("assets/images/image4.png"),
                          ),
                          SizedBox(
                            height: 20.h,
                          ),
                          Expanded(
                            child: Container(
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  color: const Color(0xff109A27),
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(25.r),
                                      topRight: Radius.circular(25.r))),
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 5.h,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      TextButton(
                                          onPressed: () {
                                            model.gotoSignIn();
                                          },
                                          child: Text(
                                            "SIGN IN",
                                            style: GoogleFonts.poppins(
                                              fontSize: 16.sp,
                                              fontWeight: FontWeight.w600,
                                              color: model.isSignIn
                                                  ? Colors.white
                                                  : Colors.white54,
                                            ),
                                          )),
                                      TextButton(
                                          onPressed: () {
                                            model.goToSignUp();
                                          },
                                          child: Text(
                                            "SIGN UP",
                                            style: GoogleFonts.poppins(
                                              fontSize: 16.sp,
                                              fontWeight: FontWeight.w600,
                                              color: model.isSignIn
                                                  ? Colors.white54
                                                  : Colors.white,
                                            ),
                                          )),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 5.h,
                                  ),
                                  Expanded(
                                    child: model.isSignIn
                                        ? Container(
                                            width: double.infinity,
                                            decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius: BorderRadius.only(
                                                    topLeft:
                                                        Radius.circular(20.r),
                                                    topRight:
                                                        Radius.circular(20.r))),
                                            child: Padding(
                                              padding: EdgeInsets.only(
                                                  left: 20.w,
                                                  top: 50.h,
                                                  right: 20.w),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    "Welcome",
                                                    style: GoogleFonts.poppins(
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        fontSize: 25.sp),
                                                  ),
                                                  Text(
                                                    "Sign in with your account",
                                                    style: GoogleFonts.poppins(
                                                        fontWeight:
                                                            FontWeight.w500),
                                                  ),
                                                  SizedBox(
                                                    height: 30.h,
                                                  ),
                                                  const CustomTextField(
                                                    title: "Username",
                                                  ),
                                                  SizedBox(
                                                    height: 15.h,
                                                  ),
                                                  const CustomPasswordTextField(
                                                      title: "Password")
                                                ],
                                              ),
                                            ))
                                        : Container(
                                            width: double.infinity,
                                            decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius: BorderRadius.only(
                                                    topLeft:
                                                        Radius.circular(20.r),
                                                    topRight:
                                                        Radius.circular(20.r))),
                                            child: Center(
                                              child: Text(
                                                "SIGN UP VIEW",
                                                style: GoogleFonts.poppins(),
                                              ),
                                            ),
                                          ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        );
      },
    );
  }
}
