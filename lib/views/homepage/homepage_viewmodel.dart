import 'package:stacked/stacked.dart';

class HomePageViewModel extends BaseViewModel {
  String? _selectedCheckInDate;
  String? _selectedCheckOutDate;
  String? get selectedCheckInDate => _selectedCheckInDate;
  String? get selectedCheckOutDate => _selectedCheckOutDate;

  void selectCheckInDate(String date) {
    _selectedCheckInDate = date;
    notifyListeners();
  }

  void selectCheckOutDate(String date) {
    _selectedCheckOutDate = date;
    notifyListeners();
  }
}
