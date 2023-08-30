import 'package:flutter/material.dart';

class CreateMedicalHistoryScreen extends StatefulWidget {
  @override
  _CreateMedicalHistoryScreenState createState() => _CreateMedicalHistoryScreenState();
}

class _CreateMedicalHistoryScreenState extends State<CreateMedicalHistoryScreen> {
  late TextEditingController historyNameController;

  @override
  void initState() {
    super.initState();
    historyNameController = TextEditingController();
  }

  @override
  void dispose() {
    historyNameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Create Medical History')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextFormField(
              controller: historyNameController,
              decoration: InputDecoration(labelText: 'Medical History Name'),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Implement logic to create medical history
                String newHistoryName = historyNameController.text;
                // Create the medical history and perform necessary actions

                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Medical history created')),
                );

                // Navigate back to the MedicalHistoriesScreen
                Navigator.pop(context);
              },
              child: Text('Create Medical History'),
            ),
          ],
        ),
      ),
    );
  }
}
