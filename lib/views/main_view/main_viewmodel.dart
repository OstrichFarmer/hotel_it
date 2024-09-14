import 'package:flutter/material.dart';
import 'package:hotel_it/views/homepage/hompage_view.dart';
import 'package:hotel_it/views/profile/profile_view.dart';
import 'package:hotel_it/views/schedule_view/schedule_view.dart';
import 'package:hotel_it/views/search_view/search_view.dart';
import 'package:stacked/stacked.dart';

class MainViewModel extends BaseViewModel {
  int _currentIndex = 0;

  int get currentIndex => _currentIndex;

  final List<Widget> _views = [
    const HomePageView(),
    const SearchView(),
    const ScheduleView(),
    const ProfileView(),
  ];

  List<Widget> get views => _views;

  void setIndex(int index) {
    _currentIndex = index;
    notifyListeners();
  }
}
