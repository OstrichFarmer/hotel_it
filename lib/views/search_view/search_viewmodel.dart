import 'package:hotel_it/data/hotel_data.dart';
import 'package:stacked/stacked.dart';

class SearchViewModel extends BaseViewModel {
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
}
