import 'package:flutter/material.dart';

class UpdateMedicalHistoryScreen extends StatefulWidget {
  final String historyName;

  UpdateMedicalHistoryScreen({required this.historyName});

  @override
  _UpdateMedicalHistoryScreenState createState() => _UpdateMedicalHistoryScreenState();
}

class _UpdateMedicalHistoryScreenState extends State<UpdateMedicalHistoryScreen> {
  late TextEditingController newHistoryNameController;

  @override
  void initState() {
    super.initState();
    newHistoryNameController = TextEditingController(text: widget.historyName);
  }

  @override
  void dispose() {
    newHistoryNameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Update Medical History')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextFormField(
              controller: newHistoryNameController,
              decoration: InputDecoration(labelText: 'New Medical History Name'),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Implement logic to update medical history
                String newHistoryName = newHistoryNameController.text;
                // Update the medical history and perform necessary actions

                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Medical history updated')),
                );

                // Navigate back to the MedicalHistoryDetailScreen
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
