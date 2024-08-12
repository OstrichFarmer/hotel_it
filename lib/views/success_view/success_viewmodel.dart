import 'package:hotel_it/app/app.locator.dart';
import 'package:hotel_it/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class SuccessViewModel extends BaseViewModel {
  final NavigationService _navigationService = locator<NavigationService>();

  void goToSignIn() {
    _navigationService.clearStackAndShow(Routes.authView,
        arguments: const AuthViewArguments(isSignIn: true));
  }
}
