import 'package:flutter/material.dart';

class CreateAppointmentScreen extends StatefulWidget {
  @override
  _CreateAppointmentScreenState createState() => _CreateAppointmentScreenState();
}

class _CreateAppointmentScreenState extends State<CreateAppointmentScreen> {
  late TextEditingController appointmentNameController;

  @override
  void initState() {
    super.initState();
    appointmentNameController = TextEditingController();
  }

  @override
  void dispose() {
    appointmentNameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Create Appointment')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextFormField(
              controller: appointmentNameController,
              decoration: InputDecoration(labelText: 'Appointment Name'),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Implement logic to create appointment
                String newAppointmentName = appointmentNameController.text;
                // Create the appointment and perform necessary actions

                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Appointment created')),
                );

                // Navigate back to the PatientListScreen
                Navigator.pop(context);
              },
              child: Text('Create Appointment'),
            ),
          ],
        ),
      ),
    );
  }
}
