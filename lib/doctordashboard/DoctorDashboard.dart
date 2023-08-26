
import 'package:flutter/material.dart';
import '../PatientListScreen.dart';
import '../medicalhistories/MedicalHistoriesScreen.dart';
class DoctorDashboard extends StatelessWidget {
  final String doctorName = "Rami";

  DoctorDashboard();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Doctor Dashboard')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Center(
            child: Text('Welcome, $doctorName'),
          ),
          SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {
              // Navigate to patient list or other sections
              // You can replace the screen with your actual screens
              Navigator.push(context, MaterialPageRoute(builder: (context) => PatientListScreen()));
            },
            child: Text('View Patients'),
          ),
          ElevatedButton(
            onPressed: () {
              // Implement other navigation options
              Navigator.push(context, MaterialPageRoute(builder: (context) => MedicalHistoriesScreen()));
            },
            child: Text('MedicalHistories'),
          ),
          SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {
              // Log out and return to authentication screen
             // Navigator.popUntil(context, ModalRoute.withName('/'));
               
            },
            child: Text('Log Out'),
          ),
        ],
      ),
    );
  }
}

