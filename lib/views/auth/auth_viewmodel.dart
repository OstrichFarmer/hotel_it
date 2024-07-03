import 'package:stacked/stacked.dart';

class AuthViewModel extends BaseViewModel {
  bool isSignIn = false;

  void gotoSignIn() {
    isSignIn = true;
    notifyListeners();
  }

  void goToSignUp() {
    isSignIn = false;
    notifyListeners();
  }
}
