import 'package:flutter/material.dart';
import 'UpdateAppointmentScreen.dart';

class AppointmentDetailScreen extends StatelessWidget {
  final String appointmentName;

  AppointmentDetailScreen({required this.appointmentName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Appointment Detail')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text('Appointment Name: $appointmentName'),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Navigate to appointment update screen
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => UpdateAppointmentScreen(appointmentName: appointmentName),
                  ),
                );
              },
              child: Text('Update Appointment'),
            ),
            ElevatedButton(
              onPressed: () {
                // Implement logic to cancel appointment
                // Display confirmation dialog, update data, etc.
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Appointment canceled')),
                );
              },
              child: Text('Cancel Appointment'),
            ),
          ],
        ),
      ),
    );
  }
}

