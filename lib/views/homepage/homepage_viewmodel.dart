import 'package:stacked/stacked.dart';

class HomePageViewModel extends BaseViewModel {
  String? _selectedDate;
  String? get selectedDate => _selectedDate;

  void selectDate(String date) {
    _selectedDate = date;
    notifyListeners();
  }
}
