import 'package:auto_route/auto_route.dart';
import 'package:auto_router_project/data/provider/app_state.dart';
import 'package:auto_router_project/data/storage/shared_pref_provider.dart';
import 'package:auto_router_project/router/app_router.gr.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final _appRouter = AppRouter();
  final SharedPrefProvider _sharedPrefProvider = SharedPrefProvider();

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AppState(),
      child: Consumer<AppState>(
        builder: (context, state, _) => MaterialApp.router(
          routerDelegate: AutoRouterDelegate.declarative(_appRouter,
              routes: (_) => [
                    if (!state.isInit) SplashRoute(),
                    if (state.isInit) ...[
                      if (!state.isLogged) CodeRoute(),
                      if (state.isLogged) TabsRoute(),
                    ]
                  ],
              onNavigate: (url, _) {
                print(url.path);
              }),
          routeInformationParser:
              _appRouter.defaultRouteParser(includePrefixMatches: true),
        ),
      ),
    );
  }
}
