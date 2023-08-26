import 'package:flutter/material.dart';
import 'AppointmentDetailScreen.dart';
import 'CreateAppointmentScreen.dart';

class AppointmentsScreen extends StatefulWidget {
  @override
  _AppointmentsScreenState createState() => _AppointmentsScreenState();
}

class _AppointmentsScreenState extends State<AppointmentsScreen> {
  List<String> appointments = [
    'Appointment 1',
    'Appointment 2',
    'Appointment 3',
    // Add more appointment names here
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Appointments')),
      body: ListView.builder(
        itemCount: appointments.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(appointments[index]),
            onTap: () {
              // Navigate to appointment detail screen
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => AppointmentDetailScreen(appointmentName: appointments[index]),
                ),
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Navigate to create appointment screen
          Navigator.push(context, MaterialPageRoute(builder: (context) => CreateAppointmentScreen()));
        },
        child: Icon(Icons.add),
      ),
    );
  }
}




