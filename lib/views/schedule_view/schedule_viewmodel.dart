import 'package:stacked/stacked.dart';

class ScheduleViewModel extends BaseViewModel {
  int? selectedRoom;
  int? selectedNumberOfAdults;
  int? selectedNumberOfChildren;

  void setSelectedRoom(int? value) {
    selectedRoom = value;
    notifyListeners();
  }

  void setSelectedNumberOfChildren(int? value) {
    selectedNumberOfChildren = value;
    notifyListeners();
  }

  void setSelectedNumberOfAdults(int? value) {
    selectedNumberOfAdults = value;
    notifyListeners();
  }
}
