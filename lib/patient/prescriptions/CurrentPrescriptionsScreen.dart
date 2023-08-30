import 'package:flutter/material.dart';

class CurrentPrescriptionsScreen extends StatelessWidget {
  final List<Prescription> currentPrescriptions;

  CurrentPrescriptionsScreen({required this.currentPrescriptions});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Current Prescriptions')),
      body: ListView.builder(
        itemCount: currentPrescriptions.length,
        itemBuilder: (context, index) {
          final prescription = currentPrescriptions[index];
          return ListTile(
            title: Text(prescription.medicationName),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Dosage: ${prescription.dosage}'),
                Text('Frequency: ${prescription.frequency}'),
                Text('Start Date: ${prescription.startDate}'),
                Text('End Date: ${prescription.endDate}'),
              ],
            ),
          );
        },
      ),
    );
  }
}

class Prescription {
  final String medicationName;
  final String dosage;
  final String frequency;
  final String startDate;
  final String endDate;

  Prescription({
    required this.medicationName,
    required this.dosage,
    required this.frequency,
    required this.startDate,
    required this.endDate,
  });
}
