import 'package:auto_route/auto_route.dart';
import 'package:auto_router_project/router/app_router.gr.dart';
import 'package:flutter/material.dart';

class AppointmentPage extends StatelessWidget {
  const AppointmentPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: GestureDetector(
      child: const Text('Appointment page'),
      onTap: () => AutoRouter.of(context).push(AppointmentDetailRoute(id: 123)),
    )));
  }
}
