import 'package:flutter/material.dart';
import 'package:hotel_it/app/app.bottomsheets.dart';
import 'package:hotel_it/app/app.locator.dart';
import 'package:hotel_it/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class ProfileViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  final _bottomSheetService = locator<BottomSheetService>();
  String? _selectedLanguage;

  Future<void> showLanguageSelectionBottomSheet() async {
    var response = await _bottomSheetService.showCustomSheet(
      variant: BottomSheetType.languageView,
      barrierColor: Colors.transparent,
    );

    if (response != null && response.confirmed) {
      _selectedLanguage = response.data;
      notifyListeners();
    }
  }

  String get selectedLanguage => _selectedLanguage ?? 'English';

  void goToContactView() {
    _navigationService.navigateTo(Routes.contactView);
  }

  void goToLanguageView() {
    _navigationService.navigateTo(Routes.languageView);
  }

  void goToAboutUsView() {
    _navigationService.navigateTo(Routes.aboutUsView);
  }

  void goToTandCView() {
    _navigationService.navigateTo(Routes.tAndCView);
  }

  void goToPrivacyPolicyView() {
    _navigationService.navigateTo(Routes.privacyView);
  }

  void goBack() {
    _navigationService.back();
  }
}
