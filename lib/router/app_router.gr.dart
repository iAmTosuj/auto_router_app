// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i6;
import 'package:flutter/material.dart' as _i9;

import '../pages/appointment_detail_page.dart' as _i8;
import '../pages/appointment_page.dart' as _i7;
import '../pages/code_page.dart' as _i1;
import '../pages/favourites_page.dart' as _i4;
import '../pages/home_page.dart' as _i5;
import '../pages/splash_page.dart' as _i2;
import '../pages/tabs_page.dart' as _i3;

class AppRouter extends _i6.RootStackRouter {
  AppRouter([_i9.GlobalKey<_i9.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i6.PageFactory> pagesMap = {
    CodeRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.CodePage());
    },
    SplashRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.SplashPage());
    },
    TabsRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.TabsPage());
    },
    FavouritesRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.FavouritesPage());
    },
    HomeRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.HomePage());
    },
    AppointmentTestRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.EmptyRouterPage());
    },
    AppointmentRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i7.AppointmentPage());
    },
    AppointmentDetailRoute.name: (routeData) {
      final pathParams = routeData.pathParams;
      final args = routeData.argsAs<AppointmentDetailRouteArgs>(
          orElse: () =>
              AppointmentDetailRouteArgs(id: pathParams.getInt('id')));
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i8.AppointmentDetailPage(key: args.key, id: args.id));
    }
  };

  @override
  List<_i6.RouteConfig> get routes => [
        _i6.RouteConfig(CodeRoute.name, path: '/code'),
        _i6.RouteConfig(SplashRoute.name, path: '/splash'),
        _i6.RouteConfig(TabsRoute.name, path: '/', children: [
          _i6.RouteConfig(FavouritesRoute.name,
              path: 'favourite', parent: TabsRoute.name),
          _i6.RouteConfig(HomeRoute.name, path: 'home', parent: TabsRoute.name),
          _i6.RouteConfig(AppointmentTestRoute.name,
              path: 'appointment',
              parent: TabsRoute.name,
              children: [
                _i6.RouteConfig(AppointmentRoute.name,
                    path: '', parent: AppointmentTestRoute.name),
                _i6.RouteConfig(AppointmentDetailRoute.name,
                    path: ':id',
                    parent: AppointmentTestRoute.name,
                    fullMatch: true)
              ])
        ])
      ];
}

/// generated route for [_i1.CodePage]
class CodeRoute extends _i6.PageRouteInfo<void> {
  const CodeRoute() : super(name, path: '/code');

  static const String name = 'CodeRoute';
}

/// generated route for [_i2.SplashPage]
class SplashRoute extends _i6.PageRouteInfo<void> {
  const SplashRoute() : super(name, path: '/splash');

  static const String name = 'SplashRoute';
}

/// generated route for [_i3.TabsPage]
class TabsRoute extends _i6.PageRouteInfo<void> {
  const TabsRoute({List<_i6.PageRouteInfo>? children})
      : super(name, path: '/', initialChildren: children);

  static const String name = 'TabsRoute';
}

/// generated route for [_i4.FavouritesPage]
class FavouritesRoute extends _i6.PageRouteInfo<void> {
  const FavouritesRoute() : super(name, path: 'favourite');

  static const String name = 'FavouritesRoute';
}

/// generated route for [_i5.HomePage]
class HomeRoute extends _i6.PageRouteInfo<void> {
  const HomeRoute() : super(name, path: 'home');

  static const String name = 'HomeRoute';
}

/// generated route for [_i6.EmptyRouterPage]
class AppointmentTestRoute extends _i6.PageRouteInfo<void> {
  const AppointmentTestRoute({List<_i6.PageRouteInfo>? children})
      : super(name, path: 'appointment', initialChildren: children);

  static const String name = 'AppointmentTestRoute';
}

/// generated route for [_i7.AppointmentPage]
class AppointmentRoute extends _i6.PageRouteInfo<void> {
  const AppointmentRoute() : super(name, path: '');

  static const String name = 'AppointmentRoute';
}

/// generated route for [_i8.AppointmentDetailPage]
class AppointmentDetailRoute
    extends _i6.PageRouteInfo<AppointmentDetailRouteArgs> {
  AppointmentDetailRoute({_i9.Key? key, required int id})
      : super(name,
            path: ':id',
            args: AppointmentDetailRouteArgs(key: key, id: id),
            rawPathParams: {'id': id});

  static const String name = 'AppointmentDetailRoute';
}

class AppointmentDetailRouteArgs {
  const AppointmentDetailRouteArgs({this.key, required this.id});

  final _i9.Key? key;

  final int id;
}
