import 'package:flutter/material.dart';
import '../patientHome/patient_home_screen.dart';

class MedicalHistoryScreen extends StatelessWidget {
  final List<MedicalRecord> medicalHistory;

  MedicalHistoryScreen({required this.medicalHistory});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Medical History')),
      body: ListView.builder(
        itemCount: medicalHistory.length,
        itemBuilder: (context, index) {
          final record = medicalHistory[index];
          return ListTile(
            title: Text(record.date),
            subtitle: Column(
              //crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Diagnoses: ${record.diagnoses}'),
                Text('Treatments: ${record.treatments}'),
                Text('Notes: ${record.notes}'),
              ],
            ),
          );
        },
      ),
    );
  }
}

class MedicalRecord {
  final String date;
  final String diagnoses;
  final String treatments;
  final String notes;

  MedicalRecord({required this.date, required this.diagnoses, required this.treatments, required this.notes});
}
