// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedNavigatorGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter/material.dart' as _i19;
import 'package:flutter/material.dart';
import 'package:hotel_it/views/auth/auth_view.dart' as _i3;
import 'package:hotel_it/views/confirm_email/confirm_email_view.dart' as _i4;
import 'package:hotel_it/views/contact/contact_view.dart' as _i12;
import 'package:hotel_it/views/homepage/homepage_view.dart' as _i8;
import 'package:hotel_it/views/hotel_detail/hotel_detail_view.dart' as _i18;
import 'package:hotel_it/views/main_view/main_view.dart' as _i7;
import 'package:hotel_it/views/onboarding/onboarding_view.dart' as _i2;
import 'package:hotel_it/views/profile/about_us.dart' as _i15;
import 'package:hotel_it/views/profile/language_view.dart' as _i17;
import 'package:hotel_it/views/profile/privacy_view.dart' as _i16;
import 'package:hotel_it/views/profile/profile_view.dart' as _i9;
import 'package:hotel_it/views/recent_vacation/recent_vacation_view.dart'
    as _i13;
import 'package:hotel_it/views/schedule_view/schedule_view.dart' as _i10;
import 'package:hotel_it/views/search_view/search_view.dart' as _i11;
import 'package:hotel_it/views/select_country/select_country_view.dart' as _i5;
import 'package:hotel_it/views/success_view/success_view.dart' as _i6;
import 'package:hotel_it/views/terms_and_conditions.dart/t_and_c_view.dart'
    as _i14;
import 'package:stacked/stacked.dart' as _i1;
import 'package:stacked_services/stacked_services.dart' as _i20;

class Routes {
  static const onboardingView = '/onboarding-view';

  static const authView = '/auth-view';

  static const confirmEmailOtpView = '/confirm-email-otp-view';

  static const selectCountryView = '/select-country-view';

  static const successView = '/success-view';

  static const mainView = '/main-view';

  static const homePageView = '/home-page-view';

  static const profileView = '/profile-view';

  static const scheduleView = '/schedule-view';

  static const searchView = '/search-view';

  static const contactView = '/contact-view';

  static const recentVacationView = '/recent-vacation-view';

  static const tAndCView = '/t-and-cView';

  static const aboutUsView = '/about-us-view';

  static const privacyView = '/privacy-view';

  static const languageView = '/language-view';

  static const hotelDetailView = '/hotel-detail-view';

  static const all = <String>{
    onboardingView,
    authView,
    confirmEmailOtpView,
    selectCountryView,
    successView,
    mainView,
    homePageView,
    profileView,
    scheduleView,
    searchView,
    contactView,
    recentVacationView,
    tAndCView,
    aboutUsView,
    privacyView,
    languageView,
    hotelDetailView,
  };
}

class StackedRouter extends _i1.RouterBase {
  final _routes = <_i1.RouteDef>[
    _i1.RouteDef(
      Routes.onboardingView,
      page: _i2.OnboardingView,
    ),
    _i1.RouteDef(
      Routes.authView,
      page: _i3.AuthView,
    ),
    _i1.RouteDef(
      Routes.confirmEmailOtpView,
      page: _i4.ConfirmEmailOtpView,
    ),
    _i1.RouteDef(
      Routes.selectCountryView,
      page: _i5.SelectCountryView,
    ),
    _i1.RouteDef(
      Routes.successView,
      page: _i6.SuccessView,
    ),
    _i1.RouteDef(
      Routes.mainView,
      page: _i7.MainView,
    ),
    _i1.RouteDef(
      Routes.homePageView,
      page: _i8.HomePageView,
    ),
    _i1.RouteDef(
      Routes.profileView,
      page: _i9.ProfileView,
    ),
    _i1.RouteDef(
      Routes.scheduleView,
      page: _i10.ScheduleView,
    ),
    _i1.RouteDef(
      Routes.searchView,
      page: _i11.SearchView,
    ),
    _i1.RouteDef(
      Routes.contactView,
      page: _i12.ContactView,
    ),
    _i1.RouteDef(
      Routes.recentVacationView,
      page: _i13.RecentVacationView,
    ),
    _i1.RouteDef(
      Routes.tAndCView,
      page: _i14.TAndCView,
    ),
    _i1.RouteDef(
      Routes.aboutUsView,
      page: _i15.AboutUsView,
    ),
    _i1.RouteDef(
      Routes.privacyView,
      page: _i16.PrivacyView,
    ),
    _i1.RouteDef(
      Routes.languageView,
      page: _i17.LanguageView,
    ),
    _i1.RouteDef(
      Routes.hotelDetailView,
      page: _i18.HotelDetailView,
    ),
  ];

  final _pagesMap = <Type, _i1.StackedRouteFactory>{
    _i2.OnboardingView: (data) {
      return _i1.buildAdaptivePageRoute<dynamic>(
        builder: (context) => const _i2.OnboardingView(),
        settings: data,
      );
    },
    _i3.AuthView: (data) {
      final args = data.getArgs<AuthViewArguments>(nullOk: false);
      return _i1.buildAdaptivePageRoute<dynamic>(
        builder: (context) =>
            _i3.AuthView(key: args.key, isSignIn: args.isSignIn),
        settings: data,
      );
    },
    _i4.ConfirmEmailOtpView: (data) {
      return _i1.buildAdaptivePageRoute<dynamic>(
        builder: (context) => const _i4.ConfirmEmailOtpView(),
        settings: data,
      );
    },
    _i5.SelectCountryView: (data) {
      return _i1.buildAdaptivePageRoute<dynamic>(
        builder: (context) => const _i5.SelectCountryView(),
        settings: data,
      );
    },
    _i6.SuccessView: (data) {
      return _i1.buildAdaptivePageRoute<dynamic>(
        builder: (context) => const _i6.SuccessView(),
        settings: data,
      );
    },
    _i7.MainView: (data) {
      return _i1.buildAdaptivePageRoute<dynamic>(
        builder: (context) => const _i7.MainView(),
        settings: data,
      );
    },
    _i8.HomePageView: (data) {
      return _i1.buildAdaptivePageRoute<dynamic>(
        builder: (context) => const _i8.HomePageView(),
        settings: data,
      );
    },
    _i9.ProfileView: (data) {
      return _i1.buildAdaptivePageRoute<dynamic>(
        builder: (context) => const _i9.ProfileView(),
        settings: data,
      );
    },
    _i10.ScheduleView: (data) {
      return _i1.buildAdaptivePageRoute<dynamic>(
        builder: (context) => const _i10.ScheduleView(),
        settings: data,
      );
    },
    _i11.SearchView: (data) {
      return _i1.buildAdaptivePageRoute<dynamic>(
        builder: (context) => const _i11.SearchView(),
        settings: data,
      );
    },
    _i12.ContactView: (data) {
      return _i1.buildAdaptivePageRoute<dynamic>(
        builder: (context) => const _i12.ContactView(),
        settings: data,
      );
    },
    _i13.RecentVacationView: (data) {
      return _i1.buildAdaptivePageRoute<dynamic>(
        builder: (context) => const _i13.RecentVacationView(),
        settings: data,
      );
    },
    _i14.TAndCView: (data) {
      return _i1.buildAdaptivePageRoute<dynamic>(
        builder: (context) => const _i14.TAndCView(),
        settings: data,
      );
    },
    _i15.AboutUsView: (data) {
      return _i1.buildAdaptivePageRoute<dynamic>(
        builder: (context) => const _i15.AboutUsView(),
        settings: data,
      );
    },
    _i16.PrivacyView: (data) {
      return _i1.buildAdaptivePageRoute<dynamic>(
        builder: (context) => const _i16.PrivacyView(),
        settings: data,
      );
    },
    _i17.LanguageView: (data) {
      final args = data.getArgs<LanguageViewArguments>(nullOk: false);
      return _i1.buildAdaptivePageRoute<dynamic>(
        builder: (context) => _i17.LanguageView(
            key: args.key, request: args.request, completer: args.completer),
        settings: data,
      );
    },
    _i18.HotelDetailView: (data) {
      final args = data.getArgs<HotelDetailViewArguments>(nullOk: false);
      return _i1.buildAdaptivePageRoute<dynamic>(
        builder: (context) => _i18.HotelDetailView(
            key: args.key,
            name: args.name,
            imageUrl: args.imageUrl,
            description: args.description,
            location: args.location,
            price: args.price,
            averageRating: args.averageRating,
            numberOfReviews: args.numberOfReviews),
        settings: data,
      );
    },
  };

  @override
  List<_i1.RouteDef> get routes => _routes;

  @override
  Map<Type, _i1.StackedRouteFactory> get pagesMap => _pagesMap;
}

class AuthViewArguments {
  const AuthViewArguments({
    this.key,
    required this.isSignIn,
  });

  final _i19.Key? key;

  final bool isSignIn;

  @override
  String toString() {
    return '{"key": "$key", "isSignIn": "$isSignIn"}';
  }

  @override
  bool operator ==(covariant AuthViewArguments other) {
    if (identical(this, other)) return true;
    return other.key == key && other.isSignIn == isSignIn;
  }

  @override
  int get hashCode {
    return key.hashCode ^ isSignIn.hashCode;
  }
}

class LanguageViewArguments {
  const LanguageViewArguments({
    this.key,
    required this.request,
    required this.completer,
  });

  final _i19.Key? key;

  final _i20.SheetRequest<dynamic> request;

  final dynamic Function(_i20.SheetResponse<dynamic>) completer;

  @override
  String toString() {
    return '{"key": "$key", "request": "$request", "completer": "$completer"}';
  }

  @override
  bool operator ==(covariant LanguageViewArguments other) {
    if (identical(this, other)) return true;
    return other.key == key &&
        other.request == request &&
        other.completer == completer;
  }

  @override
  int get hashCode {
    return key.hashCode ^ request.hashCode ^ completer.hashCode;
  }
}

class HotelDetailViewArguments {
  const HotelDetailViewArguments({
    this.key,
    required this.name,
    required this.imageUrl,
    required this.description,
    required this.location,
    required this.price,
    required this.averageRating,
    required this.numberOfReviews,
  });

  final _i19.Key? key;

  final String name;

  final String imageUrl;

  final String description;

  final String location;

  final double price;

  final double averageRating;

  final int numberOfReviews;

  @override
  String toString() {
    return '{"key": "$key", "name": "$name", "imageUrl": "$imageUrl", "description": "$description", "location": "$location", "price": "$price", "averageRating": "$averageRating", "numberOfReviews": "$numberOfReviews"}';
  }

  @override
  bool operator ==(covariant HotelDetailViewArguments other) {
    if (identical(this, other)) return true;
    return other.key == key &&
        other.name == name &&
        other.imageUrl == imageUrl &&
        other.description == description &&
        other.location == location &&
        other.price == price &&
        other.averageRating == averageRating &&
        other.numberOfReviews == numberOfReviews;
  }

  @override
  int get hashCode {
    return key.hashCode ^
        name.hashCode ^
        imageUrl.hashCode ^
        description.hashCode ^
        location.hashCode ^
        price.hashCode ^
        averageRating.hashCode ^
        numberOfReviews.hashCode;
  }
}

extension NavigatorStateExtension on _i20.NavigationService {
  Future<dynamic> navigateToOnboardingView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.onboardingView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToAuthView({
    _i19.Key? key,
    required bool isSignIn,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo<dynamic>(Routes.authView,
        arguments: AuthViewArguments(key: key, isSignIn: isSignIn),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToConfirmEmailOtpView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.confirmEmailOtpView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToSelectCountryView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.selectCountryView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToSuccessView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.successView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToMainView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.mainView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToHomePageView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.homePageView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToProfileView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.profileView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToScheduleView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.scheduleView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToSearchView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.searchView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToContactView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.contactView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToRecentVacationView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.recentVacationView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToTAndCView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.tAndCView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToAboutUsView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.aboutUsView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToPrivacyView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.privacyView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToLanguageView({
    _i19.Key? key,
    required _i20.SheetRequest<dynamic> request,
    required dynamic Function(_i20.SheetResponse<dynamic>) completer,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo<dynamic>(Routes.languageView,
        arguments: LanguageViewArguments(
            key: key, request: request, completer: completer),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToHotelDetailView({
    _i19.Key? key,
    required String name,
    required String imageUrl,
    required String description,
    required String location,
    required double price,
    required double averageRating,
    required int numberOfReviews,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo<dynamic>(Routes.hotelDetailView,
        arguments: HotelDetailViewArguments(
            key: key,
            name: name,
            imageUrl: imageUrl,
            description: description,
            location: location,
            price: price,
            averageRating: averageRating,
            numberOfReviews: numberOfReviews),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithOnboardingView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.onboardingView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithAuthView({
    _i19.Key? key,
    required bool isSignIn,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return replaceWith<dynamic>(Routes.authView,
        arguments: AuthViewArguments(key: key, isSignIn: isSignIn),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithConfirmEmailOtpView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.confirmEmailOtpView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithSelectCountryView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.selectCountryView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithSuccessView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.successView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithMainView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.mainView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithHomePageView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.homePageView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithProfileView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.profileView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithScheduleView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.scheduleView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithSearchView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.searchView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithContactView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.contactView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithRecentVacationView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.recentVacationView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithTAndCView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.tAndCView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithAboutUsView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.aboutUsView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithPrivacyView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.privacyView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithLanguageView({
    _i19.Key? key,
    required _i20.SheetRequest<dynamic> request,
    required dynamic Function(_i20.SheetResponse<dynamic>) completer,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return replaceWith<dynamic>(Routes.languageView,
        arguments: LanguageViewArguments(
            key: key, request: request, completer: completer),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithHotelDetailView({
    _i19.Key? key,
    required String name,
    required String imageUrl,
    required String description,
    required String location,
    required double price,
    required double averageRating,
    required int numberOfReviews,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return replaceWith<dynamic>(Routes.hotelDetailView,
        arguments: HotelDetailViewArguments(
            key: key,
            name: name,
            imageUrl: imageUrl,
            description: description,
            location: location,
            price: price,
            averageRating: averageRating,
            numberOfReviews: numberOfReviews),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }
}
