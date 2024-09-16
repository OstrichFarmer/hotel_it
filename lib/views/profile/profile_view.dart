import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hotel_it/common/custom_textstyles.dart';
import 'package:hotel_it/common/ui_helpers.dart';
import 'package:hotel_it/views/profile/profile_viewmodel.dart';
import 'package:hotel_it/widgets/screen_tile.dart';
import 'package:stacked/stacked.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

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
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            title: Text(
              "Profile",
              style: w600Style(17, Theme.of(context).colorScheme.onSurface),
            ),
          ),
          body: Padding(
            padding: EdgeInsets.only(left: 20.w, right: 20.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 37.w,
                  backgroundColor: Colors.lightGreen,
                ),
                const Text("Jane Doe"),
                ScreenTile(
                  onTap: () {
                    model.goToContactView;
                  },
                  icon: Icons.mail,
                  text: "Contact",
                ),
                verticalSpaceSmall,
                ScreenTile(
                  onTap: () {},
                  icon: Icons.language,
                  text: "Language",
                ),
                verticalSpaceSmall,
                ScreenTile(
                    onTap: () {},
                    icon: Icons.sticky_note_2_outlined,
                    text: "Terms & Conditions"),
                verticalSpaceSmall,
                ScreenTile(
                    onTap: () {
                      model.goToAboutUsView;
                    },
                    icon: Icons.sticky_note_2_outlined,
                    text: "About Us"),
                verticalSpaceSmall,
                ScreenTile(
                    onTap: () {},
                    icon: Icons.sticky_note_2_outlined,
                    text: "Privacy Policy"),
              ],
            ),
          ),
        );
      },
    );
  }
}
