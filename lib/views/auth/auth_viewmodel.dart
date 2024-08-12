import 'package:hotel_it/app/app.locator.dart';
import 'package:hotel_it/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class AuthViewModel extends BaseViewModel {
  final NavigationService _navigationService = locator<NavigationService>();
  bool isSignIn;

  AuthViewModel({required this.isSignIn});

  void gotoSignIn() {
    isSignIn = true;
    notifyListeners();
  }

  void goToSignUp() {
    isSignIn = false;
    notifyListeners();
  }

  void goToEmailOtp() {
    _navigationService.clearStackAndShow(Routes.confirmEmailOtpView);
  }
}
