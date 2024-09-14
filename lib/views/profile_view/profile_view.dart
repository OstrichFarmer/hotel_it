import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hotel_it/views/profile_view/profile_viewmodel.dart';
import 'package:stacked/stacked.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ProfileViewModel>.reactive(
      viewModelBuilder: () => ProfileViewModel(),
      builder: (
        BuildContext context,
        ProfileViewModel model,
        Widget? child,
      ) {
        return Scaffold(
          appBar: AppBar(backgroundColor: Colors.transparent),
          body: Padding(
            padding: EdgeInsets.only(left: 20.w, right: 20.w),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 37,
                  backgroundColor: Colors.lightGreen,
                ),
                Text("Jane Doe"),
                
              ],
            ),
          ),
        );
      },
    );
  }
}
