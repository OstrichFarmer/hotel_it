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
            centerTitle: true,
          ),
          body: Padding(
            padding: EdgeInsets.only(left: 15.w, right: 15.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 37.w,
                  backgroundColor: Colors.lightGreen,
                ),
                const Text("Jane Doe"),
                verticalSpaceMedium,
                ScreenTile(
                  onTap: () {
                    model.goToContactView();
                  },
                  icon: Icons.mail_outline,
                  text: "Contact",
                ),
                verticalSpaceTwenty,
                ScreenTile(
                  onTap: () {
                    model.showLanguageSelectionBottomSheet();
                  },
                  icon: Icons.language_outlined,
                  text: "Language",
                ),
                verticalSpaceTwenty,
                ScreenTile(
                    onTap: () {
                      model.goToTandCView();
                    },
                    icon: Icons.sticky_note_2_outlined,
                    text: "Terms & Conditions"),
                verticalSpaceTwenty,
                ScreenTile(
                    onTap: () {
                      model.goToAboutUsView();
                    },
                    icon: Icons.sticky_note_2_outlined,
                    text: "About Us"),
                verticalSpaceTwenty,
                ScreenTile(
                    onTap: () {
                      model.goToPrivacyPolicyView();
                    },
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
