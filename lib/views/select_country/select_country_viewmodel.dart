import 'package:hotel_it/app/app.locator.dart';
import 'package:hotel_it/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class SelectCountryViewModel extends BaseViewModel {
  final NavigationService _navigationService = locator<NavigationService>();
  final List<String> countries = [
    'Abia',
    'Adamawa',
    'Akwa Ibom',
    'Anambra',
    'Bauchi',
    'Bayelsa',
    'Benue',
    'Borno',
  ];
  String? selectedValue;

  void onchanged(String? value) {
    selectedValue = value;
    notifyListeners();
  }

  void goToSuccess() {
    _navigationService.clearStackAndShow(Routes.successView);
  }
}
