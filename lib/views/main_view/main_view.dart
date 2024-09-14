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
                        Icons.menu,
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
          drawer: Drawer(
            child: Material(
              child: ListView(
                padding: EdgeInsets.zero,
                children: <Widget>[
                  DrawerHeader(
                    decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor,
                    ),
                    child: const Text(
                      'Drawer Header',
                    ),
                  ),
                  ListTile(
                    leading: const Icon(Icons.home),
                    title: const Text('Home'),
                    trailing: const Icon(Icons.chevron_right),
                    onTap: () {
                      Navigator.pop(context); // Close the drawer
                    },
                  ),
                  ListTile(
                    leading: const Icon(Icons.search),
                    title: const Text('Search'),
                    trailing: const Icon(Icons.chevron_right),
                    onTap: () {
                      Navigator.pop(context); // Close the drawer
                    },
                  ),
                  ListTile(
                    leading: const Icon(Icons.notifications),
                    title: const Text('Notifications'),
                    trailing: const Icon(Icons.chevron_right),
                    onTap: () {
                      Navigator.pop(context); // Close the drawer
                    },
                  ),
                  ListTile(
                    leading: const Icon(Icons.person),
                    title: const Text('Profile'),
                    trailing: const Icon(Icons.chevron_right),
                    onTap: () {
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
