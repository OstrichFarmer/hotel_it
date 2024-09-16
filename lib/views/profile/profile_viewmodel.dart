import 'package:hotel_it/app/app.locator.dart';
import 'package:hotel_it/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class ProfileViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();

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
}
