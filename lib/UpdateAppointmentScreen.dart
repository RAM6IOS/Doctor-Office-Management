import 'package:flutter/material.dart';

class UpdateAppointmentScreen extends StatefulWidget {
  final String appointmentName;

  UpdateAppointmentScreen({required this.appointmentName});

  @override
  _UpdateAppointmentScreenState createState() => _UpdateAppointmentScreenState();
}

class _UpdateAppointmentScreenState extends State<UpdateAppointmentScreen> {
  late TextEditingController newAppointmentNameController;

  @override
  void initState() {
    super.initState();
    newAppointmentNameController = TextEditingController(text: widget.appointmentName);
  }

  @override
  void dispose() {
    newAppointmentNameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Update Appointment')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextFormField(
              controller: newAppointmentNameController,
              decoration: InputDecoration(labelText: 'New Appointment Name'),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Implement logic to update appointment
                String newAppointmentName = newAppointmentNameController.text;
                // Update appointment data or perform necessary actions

                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Appointment updated')),
                );

                // Navigate back to the AppointmentDetailScreen
                Navigator.pop(context);
              },
              child: Text('Save Changes'),
            ),
          ],
        ),
      ),
    );
  }
}
