import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
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
          resizeToAvoidBottomInset: true,
          body: Stack(
            children: [
              // Main content
              model.views[model.currentIndex],

              // Drawer IconButton with Builder to access Scaffold context
              Positioned(
                top: 25.h,
                left: 10.w,
                child: Builder(
                  builder: (BuildContext context) {
                    return IconButton(
                      icon: Icon(
                        Icons.grid_view_outlined,
                        size: 28.h,
                        color: Colors.black,
                      ),
                      onPressed: () {
                        Scaffold.of(context).openDrawer();
                      },
                    );
                  },
                ),
              ),
            ],
          ),
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
          drawer: Drawer(
            child: Material(
              child: ListView(
                padding: EdgeInsets.zero,
                children: <Widget>[
                  DrawerHeader(
                      decoration: BoxDecoration(
                        color: Theme.of(context).primaryColor,
                      ),
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 22.r,
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Big Ayat",
                                style: GoogleFonts.poppins(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600),
                              ),
                              Text(
                                "Nigeria",
                                style: GoogleFonts.poppins(
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                          const Spacer(),
                          const Column(
                            children: [
                              Card(
                                elevation: 5,
                                child: Icon(Icons.cancel_outlined),
                              ),
                              Spacer(),
                              Icon(Icons.dark_mode)
                            ],
                          )
                        ],
                      )),
                  ListTile(
                    leading: const Icon(Icons.home),
                    title: const Text('Home'),
                    trailing: const Icon(Icons.chevron_right),
                    onTap: () {
                      model.setIndex(0);
                      Navigator.pop(context); // Close the drawer
                    },
                  ),
                  ListTile(
                    leading: const Icon(Icons.search),
                    title: const Text('Search'),
                    trailing: const Icon(Icons.chevron_right),
                    onTap: () {
                      model.setIndex(1);
                      Navigator.pop(context); // Close the drawer
                    },
                  ),
                  ListTile(
                    leading: const Icon(Icons.notifications),
                    title: const Text('Notifications'),
                    trailing: const Icon(Icons.chevron_right),
                    onTap: () {
                      model.setIndex(2);
                      Navigator.pop(context); // Close the drawer
                    },
                  ),
                  ListTile(
                    leading: const Icon(Icons.person),
                    title: const Text('Profile'),
                    trailing: const Icon(Icons.chevron_right),
                    onTap: () {
                      model.setIndex(3);
                      Navigator.pop(context); // Close the drawer
                    },
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
