import 'package:auto_route/auto_route.dart';
import 'package:auto_router_project/pages/appointment_detail_page.dart';
import 'package:auto_router_project/pages/appointment_page.dart';
import 'package:auto_router_project/pages/favourites_page.dart';
import 'package:auto_router_project/pages/home_page.dart';
import 'package:auto_router_project/pages/tabs_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: TabsPage, path: '/', initial: true, children: [
      AutoRoute(page: FavouritesPage, path: 'favourite'),
      AutoRoute(page: HomePage, path: 'home'),
      AutoRoute(
        page: AppointmentPage,
        path: 'appointment',
      )
    ]),
    AutoRoute(page: AppointmentDetailPage, path: '/appointment/:id'),
  ],
)
class $AppRouter {}
