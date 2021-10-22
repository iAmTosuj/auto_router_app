import 'package:auto_route/auto_route.dart';
import 'package:auto_router_project/data/provider/app_state.dart';
import 'package:auto_router_project/router/app_router.gr.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AppState(),
      child: Consumer<AppState>(
        builder: (context, state, _) => MaterialApp.router(
          routerDelegate: AutoRouterDelegate.declarative(_appRouter,
              routes: (_) => [
                    if (!state.isInit) const SplashRoute(),
                    if (state.isInit) ...[
                      if (!state.isLogged) const CodeRoute(),
                      if (state.isLogged) ...[
                        const TabsRoute(),
                        if (state.selectedAppointment != null)
                          AppointmentDetailRoute(id: state.selectedAppointment!)
                      ],
                    ]
                  ],
              onNavigate: (url, _) {
                state.clearAppointment();

                if (url.segments.isEmpty) {
                  return;
                }
                var route = url.segments.last;

                if (route.name == AppointmentDetailRoute.name) {
                  state.selectAppointment(route.pathParams.getInt('id'));
                }
              },
              onPopRoute: (route, _) {
                if (route.name == AppointmentDetailRoute.name) {
                  state.clearAppointment();
                }
              }),
          routeInformationParser:
              _appRouter.defaultRouteParser(includePrefixMatches: true),
          backButtonDispatcher: RootBackButtonDispatcher(),
        ),
      ),
    );
  }
}
