import 'package:hotel_it/app/app.locator.dart';
import 'package:hotel_it/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class ConfirmEmailOtpViewModel extends BaseViewModel {
  final NavigationService _navigationService = locator<NavigationService>();
  bool _isLoading = false;
  bool get isLoading => _isLoading;

  Future<void> goToSelectCountry() async {
    _isLoading = true;
    notifyListeners();
    // Introduce a delay of 4 seconds
    await Future.delayed(const Duration(seconds: 4));

    _isLoading = false;
    notifyListeners();
    _navigationService.navigateTo(Routes.selectCountryView);
  }
}
