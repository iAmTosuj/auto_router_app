// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i6;
import 'package:flutter/material.dart' as _i7;

import '../pages/appointment_detail_page.dart' as _i2;
import '../pages/appointment_page.dart' as _i5;
import '../pages/favourites_page.dart' as _i3;
import '../pages/home_page.dart' as _i4;
import '../pages/tabs_page.dart' as _i1;

class AppRouter extends _i6.RootStackRouter {
  AppRouter([_i7.GlobalKey<_i7.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i6.PageFactory> pagesMap = {
    TabsRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.TabsPage());
    },
    AppointmentDetailRoute.name: (routeData) {
      final pathParams = routeData.pathParams;
      final args = routeData.argsAs<AppointmentDetailRouteArgs>(
          orElse: () =>
              AppointmentDetailRouteArgs(id: pathParams.getInt('id')));
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i2.AppointmentDetailPage(key: args.key, id: args.id));
    },
    FavouritesRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.FavouritesPage());
    },
    HomeRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.HomePage());
    },
    AppointmentRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.AppointmentPage());
    }
  };

  @override
  List<_i6.RouteConfig> get routes => [
        _i6.RouteConfig(TabsRoute.name, path: '/', children: [
          _i6.RouteConfig(FavouritesRoute.name,
              path: 'favourite', parent: TabsRoute.name),
          _i6.RouteConfig(HomeRoute.name, path: 'home', parent: TabsRoute.name),
          _i6.RouteConfig(AppointmentRoute.name,
              path: 'appointment', parent: TabsRoute.name)
        ]),
        _i6.RouteConfig(AppointmentDetailRoute.name, path: '/appointment/:id')
      ];
}

/// generated route for [_i1.TabsPage]
class TabsRoute extends _i6.PageRouteInfo<void> {
  const TabsRoute({List<_i6.PageRouteInfo>? children})
      : super(name, path: '/', initialChildren: children);

  static const String name = 'TabsRoute';
}

/// generated route for [_i2.AppointmentDetailPage]
class AppointmentDetailRoute
    extends _i6.PageRouteInfo<AppointmentDetailRouteArgs> {
  AppointmentDetailRoute({_i7.Key? key, required int id})
      : super(name,
            path: '/appointment/:id',
            args: AppointmentDetailRouteArgs(key: key, id: id),
            rawPathParams: {'id': id});

  static const String name = 'AppointmentDetailRoute';
}

class AppointmentDetailRouteArgs {
  const AppointmentDetailRouteArgs({this.key, required this.id});

  final _i7.Key? key;

  final int id;
}

/// generated route for [_i3.FavouritesPage]
class FavouritesRoute extends _i6.PageRouteInfo<void> {
  const FavouritesRoute() : super(name, path: 'favourite');

  static const String name = 'FavouritesRoute';
}

/// generated route for [_i4.HomePage]
class HomeRoute extends _i6.PageRouteInfo<void> {
  const HomeRoute() : super(name, path: 'home');

  static const String name = 'HomeRoute';
}

/// generated route for [_i5.AppointmentPage]
class AppointmentRoute extends _i6.PageRouteInfo<void> {
  const AppointmentRoute() : super(name, path: 'appointment');

  static const String name = 'AppointmentRoute';
}
