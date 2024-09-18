import 'package:hotel_it/app/app.locator.dart';
import 'package:hotel_it/app/app.router.dart';
import 'package:hotel_it/data/hotel_data.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class SearchViewModel extends BaseViewModel {
  final NavigationService _navigationService = locator<NavigationService>();
  final List<Hotel> _allHotels = hotels;
  List<Hotel> _filteredHotels = [];
  String _searchQuery = '';

  List<Hotel> get filteredHotels => _filteredHotels;

  SearchViewModel() {
    _filteredHotels = _allHotels;
  }

  void onSearchQueryChanged(String query) {
    _searchQuery = query;
    _filterHotels();
    notifyListeners();
  }

  void _filterHotels() {
    if (_searchQuery.isEmpty) {
      _filteredHotels = _allHotels;
    } else {
      _filteredHotels = _allHotels.where((hotel) {
        return hotel.name.toLowerCase().contains(_searchQuery.toLowerCase());
      }).toList();
    }
  }

  void goToDetails() {
    _navigationService.navigateTo(Routes.hotelDetailView);
  }
}
