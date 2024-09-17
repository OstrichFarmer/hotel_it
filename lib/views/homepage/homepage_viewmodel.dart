import 'package:hotel_it/app/app.locator.dart';
import 'package:hotel_it/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class HomePageViewModel extends BaseViewModel {
  final NavigationService _navigationService = locator<NavigationService>();
  String? _selectedCheckInDate;
  String? _selectedCheckOutDate;
  String? get selectedCheckInDate => _selectedCheckInDate;
  String? get selectedCheckOutDate => _selectedCheckOutDate;

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

  void selectCheckInDate(String date) {
    _selectedCheckInDate = date;
    notifyListeners();
  }

  void selectCheckOutDate(String date) {
    _selectedCheckOutDate = date;
    notifyListeners();
  }

  void goToRecentVacation() {
    _navigationService.navigateTo(Routes.recentVacationView);
  }
}
