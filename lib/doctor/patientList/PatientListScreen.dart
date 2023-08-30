
import 'package:flutter/material.dart';
import 'PatientDetailScreen.dart';
import '../appointments/AppointmentsScreen.dart';
import 'AddPatientScreen.dart';
//import 'AppointmentsScreen';

class PatientListScreen extends StatelessWidget {
  final List<String> patients = [
    'Patient 1',
    'Patient 2',
    'Patient 3',
    // Add more patient names here
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Patient List')),
      body: ListView.builder(
        itemCount: patients.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(patients[index]),
            onTap: () {
              // Navigate to patient detail screen
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PatientDetailScreen(
                    patientName: patients[index],  // Required parameter
                  patientDOB: 'DOB',            // Provide actual DOB
                 patientAddress: 'Address',
                  ),
                ),
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
         
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => AddPatientScreen()),
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}


