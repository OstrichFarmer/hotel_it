import 'package:stacked/stacked.dart';

class SelectCountryViewModel extends BaseViewModel {
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
}
