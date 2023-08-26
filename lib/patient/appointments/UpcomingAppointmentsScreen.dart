import 'package:flutter/material.dart';

class UpcomingAppointmentsScreen extends StatelessWidget {
  final List<Appointment> upcomingAppointments;

  UpcomingAppointmentsScreen({required this.upcomingAppointments});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Upcoming Appointments')),
      body: ListView.builder(
        itemCount: upcomingAppointments.length,
        itemBuilder: (context, index) {
          final appointment = upcomingAppointments[index];
          return ListTile(
            title: Text(appointment.date),
            subtitle: Text(appointment.time),
            trailing: Text(appointment.reason),
          );
        },
      ),
    );
  }
}

class Appointment {
  final String date;
  final String time;
  final String reason;

  Appointment({required this.date, required this.time, required this.reason});
}
