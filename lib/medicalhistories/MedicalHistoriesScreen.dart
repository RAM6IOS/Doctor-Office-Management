import 'package:flutter/material.dart';
import 'CreateMedicalHistoryScreen.dart';
import 'MedicalHistoryDetailScreen.dart';

class MedicalHistoriesScreen extends StatefulWidget {
  @override
  _MedicalHistoriesScreenState createState() => _MedicalHistoriesScreenState();
}

class _MedicalHistoriesScreenState extends State<MedicalHistoriesScreen> {
  List<String> medicalHistories = [
    'Medical History 1',
    'Medical History 2',
    'Medical History 3',
    // Add more medical history names here
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Medical Histories')),
      body: ListView.builder(
        itemCount: medicalHistories.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(medicalHistories[index]),
            onTap: () {
              // Navigate to medical history detail screen
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MedicalHistoryDetailScreen(historyName: medicalHistories[index]),
                ),
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Navigate to create medical history screen
         Navigator.push(context, MaterialPageRoute(builder: (context) => CreateMedicalHistoryScreen()));
        },
        child: Icon(Icons.add),
      ),
    );
  }
}



