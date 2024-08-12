import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hotel_it/views/main_view/main_viewmodel.dart';
import 'package:stacked/stacked.dart';

class MainView extends StatelessWidget {
  const MainView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<MainViewModel>.reactive(
      viewModelBuilder: () => MainViewModel(),
      builder: (
        BuildContext context,
        MainViewModel model,
        Widget? child,
      ) {
        return Scaffold(
          backgroundColor: Colors.transparent,
          body: model.views[model.currentIndex],
          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            currentIndex: model.currentIndex,
            onTap: (index) => model.setIndex(index),
            items: [
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.home_rounded,
                  size: 28.h,
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.search,
                  size: 28.h,
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.calendar_month,
                  size: 28.h,
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.person,
                  size: 28.h,
                ),
                label: '',
              ),
            ],
          ),
        );
      },
    );
  }
}
