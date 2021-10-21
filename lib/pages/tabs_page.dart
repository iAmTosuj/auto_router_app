import 'package:auto_route/auto_route.dart';
import 'package:auto_router_project/router/app_router.gr.dart';
import 'package:flutter/material.dart';

class TabsPage extends StatelessWidget {
  const TabsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      routes: const [
        HomeRoute(),
        AppointmentTestRoute(),
        FavouritesRoute(),
      ],
      bottomNavigationBuilder: (_, tabsRouter) {
        return BottomNavigationBar(
          currentIndex: tabsRouter.activeIndex,
          onTap: tabsRouter.setActiveIndex,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.book),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_box),
              label: 'Appointment',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_box),
              label: 'Favourite',
            ),
          ],
        );
      },
    );
  }
}
