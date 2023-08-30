import 'package:flutter/material.dart';
import 'UpdateMedicalHistoryScreen.dart';

class MedicalHistoryDetailScreen extends StatelessWidget {
  final String historyName;

  MedicalHistoryDetailScreen({required this.historyName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Medical History Detail')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text('Medical History Name: $historyName'),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Navigate to medical history update screen
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => UpdateMedicalHistoryScreen(historyName: historyName),
                  ),
                );
              },
              child: Text('Update Medical History'),
            ),
            ElevatedButton(
              onPressed: () {
                // Implement logic to delete medical history
                // Display confirmation dialog, update data, etc.
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Medical history deleted')),
                );

                // Navigate back to the MedicalHistoriesScreen
                Navigator.pop(context);
              },
              child: Text('Delete Medical History'),
            ),
          ],
        ),
      ),
    );
  }
}


