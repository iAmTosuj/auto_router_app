import 'package:auto_router_project/data/provider/app_state.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AppointmentPage extends StatelessWidget {
  const AppointmentPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          child: const Text('Appointment page'),
          onTap: () => Provider.of<AppState>(context, listen: false)
              .selectAppointment(188888),
        ),
      ),
    );
  }
}
