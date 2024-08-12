import 'package:hotel_it/views/confirm_email/confirm_email_view.dart';
import 'package:hotel_it/views/onboarding/onboarding_view.dart';
import 'package:hotel_it/views/auth/auth_view.dart';
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
  ],
  dependencies: [
    LazySingleton(classType: NavigationService),
  ],
  logger: StackedLogger(),
)
class App {}
