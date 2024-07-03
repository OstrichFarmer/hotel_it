import 'package:stacked/stacked.dart';

class AuthViewModel extends BaseViewModel {
  bool isSignIn = false;

  void toggleAuthStatus() {
    isSignIn = !isSignIn;
    notifyListeners();
  }
}
