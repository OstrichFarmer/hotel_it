import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hotel_it/app/app.bottomsheets.dart';
import 'package:hotel_it/app/app.locator.dart';
import 'package:hotel_it/app/app.router.dart';
import 'package:hotel_it/services/theme/theme.dart';
import 'package:hotel_it/services/theme/themeviewmodel.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

void main() async {
  await setupLocator();
  setupBottomSheetUi();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ThemeViewModel>.reactive(
        viewModelBuilder: () => ThemeViewModel(),
        builder: (context, model, child) {
          return ScreenUtilInit(
              designSize: const Size(360, 690),
              minTextAdapt: true,
              splitScreenMode: true,
              builder: (_, child) {
                return MaterialApp(
                  title: 'Hotel IT',
                  theme: lightTheme,
                  darkTheme: darkTheme,
                  themeMode: model.themeMode,
                  debugShowCheckedModeBanner: false,
                  onGenerateRoute: StackedRouter().onGenerateRoute,
                  navigatorKey: StackedService.navigatorKey,
                  initialRoute: Routes.onboardingView,
                  navigatorObservers: [
                    StackedService.routeObserver,
                  ],
                );
              });
        });
  }
}
