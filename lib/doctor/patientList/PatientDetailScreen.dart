import 'package:flutter/material.dart';

class PatientDetailScreen extends StatefulWidget {
  final String patientName;
  final String patientDOB;
  final String patientAddress;

  PatientDetailScreen({
    required this.patientName,
    required this.patientDOB,
    required this.patientAddress,
  });

  @override
  _PatientDetailScreenState createState() => _PatientDetailScreenState();
}

class _PatientDetailScreenState extends State<PatientDetailScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController dobController = TextEditingController();
  TextEditingController addressController = TextEditingController();

  @override
  void initState() {
    super.initState();
    nameController.text = widget.patientName;
    dobController.text = widget.patientDOB;
    addressController.text = widget.patientAddress;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Patient Detail')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextFormField(
              controller: nameController,
              decoration: InputDecoration(labelText: 'Name'),
            ),
            SizedBox(height: 16),
            TextFormField(
              controller: dobController,
              decoration: InputDecoration(labelText: 'Date of Birth'),
            ),
            SizedBox(height: 16),
            TextFormField(
              controller: addressController,
              decoration: InputDecoration(labelText: 'Address'),
            ),
            SizedBox(height: 32),
            ElevatedButton(
              onPressed: () {
                // Implement logic to update patient information
                // Update logic should be added here
              },
              child: Text('Update Information'),
            ),
          ],
        ),
      ),
    );
  }
}
