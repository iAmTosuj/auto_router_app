import 'package:auto_route/auto_route.dart';
import 'package:auto_router_project/pages/appointment_detail_page.dart';
import 'package:auto_router_project/pages/appointment_page.dart';
import 'package:auto_router_project/pages/code_page.dart';
import 'package:auto_router_project/pages/favourites_page.dart';
import 'package:auto_router_project/pages/home_page.dart';
import 'package:auto_router_project/pages/splash_page.dart';
import 'package:auto_router_project/pages/tabs_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: CodePage, path: '/code'),
    AutoRoute(page: SplashPage, path: '/splash'),
    AutoRoute(page: TabsPage, path: '/', initial: true, children: [
      AutoRoute(page: FavouritesPage, path: 'favourite'),
      AutoRoute(page: HomePage, path: 'home'),
      AutoRoute(
          page: EmptyRouterPage,
          name: 'AppointmentTestRoute',
          path: 'appointment',
          children: [
            AutoRoute(page: AppointmentPage, path: ''),
            AutoRoute(
              page: AppointmentDetailPage,
              path: ':id',
              fullMatch: true,
            ),
          ]),
    ]),
  ],
)
class $AppRouter {}
