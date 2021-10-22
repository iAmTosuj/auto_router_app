import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class AppointmentDetailPage extends StatelessWidget {
  final int id;

  const AppointmentDetailPage({Key? key, @PathParam('id') required this.id})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.lightBlue,
        body: Center(child: Text('Appointment detail page $id')));
  }
}
