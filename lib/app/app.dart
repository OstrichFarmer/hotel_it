import 'package:hotel_it/views/confirm_email/confirm_email_view.dart';
import 'package:hotel_it/views/contact/contact_view.dart';
import 'package:hotel_it/views/homepage/homepage_view.dart';
import 'package:hotel_it/views/main_view/main_view.dart';
import 'package:hotel_it/views/onboarding/onboarding_view.dart';
import 'package:hotel_it/views/auth/auth_view.dart';
import 'package:hotel_it/views/profile/profile_view.dart';
import 'package:hotel_it/views/recent_vacation/recent_vacation_view.dart';
import 'package:hotel_it/views/schedule_view/schedule_view.dart';
import 'package:hotel_it/views/search_view/search_view.dart';
import 'package:hotel_it/views/select_country/select_country_view.dart';
import 'package:hotel_it/views/success_view/success_view.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:stacked/stacked_annotations.dart';

@StackedApp(
  routes: [
    AdaptiveRoute(page: OnboardingView),
    AdaptiveRoute(page: AuthView),
    AdaptiveRoute(page: ConfirmEmailOtpView),
    AdaptiveRoute(page: SelectCountryView),
    AdaptiveRoute(page: SuccessView),
    AdaptiveRoute(page: MainView),
    AdaptiveRoute(page: HomePageView),
    AdaptiveRoute(page: ProfileView),
    AdaptiveRoute(page: ScheduleView),
    AdaptiveRoute(page: SearchView),
    AdaptiveRoute(page: ContactView),
    AdaptiveRoute(page: RecentVacationView)
  ],
  dependencies: [
    LazySingleton(classType: NavigationService),
  ],
  logger: StackedLogger(),
)
class App {}
