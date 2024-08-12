import 'package:flutter/material.dart';
import 'package:hotel_it/views/auth/auth_view.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'dart:async';
import 'package:hotel_it/app/app.locator.dart';

class OnboardingViewModel extends BaseViewModel {
  final NavigationService _navigationService = locator<NavigationService>();
  int _currentIndex = 0;
  int get currentIndex => _currentIndex;

  final List<String> _images = [
    'assets/images/image1.png',
    'assets/images/image2.png',
    'assets/images/image3.png',
    'assets/images/image4.png'
  ];
  List<String> get images => _images;

  final List<Color> _backgroundColors = [
    Colors.white,
    Colors.white,
    Colors.white,
    Colors.blue
  ];
  List<Color> get backgroundColors => _backgroundColors;

  Timer? _timer;

  void startTimer() {
    _timer = Timer.periodic(const Duration(seconds: 3), (timer) {
      if (_currentIndex < _images.length - 1) {
        _currentIndex++;
        notifyListeners();
      } else {
        timer.cancel();
        Future.delayed(const Duration(seconds: 1), () {
          _navigateToHome();
        });
      }
    });
  }

  void _navigateToHome() {
    _navigationService.navigateWithTransition(
      const AuthView(
        isSignIn: false,
      ),
      transitionStyle: Transition.fade,
      duration: const Duration(seconds: 2),
    );
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }
}
