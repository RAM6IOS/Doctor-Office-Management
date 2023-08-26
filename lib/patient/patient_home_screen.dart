import 'package:flutter/material.dart';
//import '../Patient/patientauthentication.dart/PatientLoginScreen.dart';

import '../patient/patientauthentication.dart/PersonalInfoScreen.dart';
import '../patient/appointments/UpcomingAppointmentsScreen.dart';
import '../patient/medicalhstory/MedicalHistoryScreen.dart';
//import '../Patient/medicalHistory/MedicalHistoryScreen.dart';
//import 'appointments/medicalhstory/MedicalHistoryScreen.dart';

class PatientHomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Patient Home')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PersonalInfoScreen(
                    name: 'John Doe',
                email: 'john@example.com',
              dob: '1990-01-01',
              address: '123 Main St',
                  )),
                );
                
              },
              child: Text('PersonalInfo'),
            ),
            ElevatedButton(
              onPressed: () {
                 Navigator.push(
  context,
  MaterialPageRoute(
    builder: (context) => UpcomingAppointmentsScreen(
      upcomingAppointments: [
        Appointment(date: '2023-08-25', time: '10:00 AM', reason: 'Routine checkup'),
        Appointment(date: '2023-08-28', time: '3:30 PM', reason: 'Follow-up visit'),
        // Add more appointments here
      ],
    ),
  ),
);
              },
              child: Text('Appointments'),
            ),
            ElevatedButton(
              onPressed: () {
               Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MedicalHistoryScreen(
                    medicalHistory: [
                      MedicalRecord(
                        date: '2023-08-10',
                        diagnoses: 'Common cold',
                        treatments: 'Rest, fluids, and over-the-counter medication',
                        notes: 'Patient advised to get plenty of rest and stay hydrated.',
                      ),
                      MedicalRecord(
                        date: '2023-07-20',
                        diagnoses: 'Sprained ankle',
                        treatments: 'RICE (Rest, Ice, Compression, Elevation)',
                        notes: 'Patient given a prescription for pain relief and instructed to use crutches.',
                      ),
                      // Add more medical records here
                    ],
                  )),
                );
                
                

              },
              child: Text('View Medical History'),
            ),
            ElevatedButton(
              onPressed: () {

                 /*
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PrescriptionsScreen()),
                );
                */
              },
              child: Text('View Prescriptions'),
            ),
          ],
        ),
      ),
    );
  }
}

// Implement UpcomingAppointmentsScreen, PastAppointmentsScreen, MedicalHistoryScreen, PrescriptionsScreen, and other necessary screens.

