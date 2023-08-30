import 'package:flutter/material.dart';
//import '../medicalhistories/MedicalHistoriesScreen.dart';

import '../appointments/UpcomingAppointmentsScreen.dart';
import '../medicalhstory/MedicalHistoryScreen.dart';
import '../prescriptions/CurrentPrescriptionsScreen.dart';




class CurrentPrescriptions extends StatelessWidget {

  @override
  Widget build(BuildContext context){
     return Container(
  margin:  EdgeInsets.all(10),
    child: DecoratedBox(
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 241, 138, 103).withOpacity(0.5),
            borderRadius: BorderRadius.circular(10),
            //padding:EdgeInsets.all(10),
          ),
          child: Container(
            padding: EdgeInsets.all(10),
            child: ListTile (
              leading: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 16,
                ),
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.5),
                   borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("P",
                      style: TextStyle(
                        color: const Color.fromARGB(255, 0, 134, 243).withOpacity(0.6),
                        fontSize: 30,
                        fontWeight: FontWeight.bold
                      ),)
                    ],
              
                )
              ),
              title: TextButton(
                  child: const Text('Prescri ptions',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    color: Colors.black
                   
                   ),
                  ),
                  onPressed: () {
                      Navigator.push(
  context,
  MaterialPageRoute(
    builder: (context) => CurrentPrescriptionsScreen(
      currentPrescriptions: [
        Prescription(
          medicationName: 'Medicine A',
          dosage: '1 tablet',
          frequency: 'Twice daily',
          startDate: '2023-08-01',
          endDate: '2023-08-15',
        ),
        Prescription(
          medicationName: 'Medicine B',
          dosage: '2 tablets',
          frequency: 'Once daily',
          startDate: '2023-08-10',
          endDate: '2023-08-20',
        ),
        // Add more prescriptions here
      ],
    ),
  ),
);
                  },
                ),

            ) ,
            )
            
          ),
 );

  }
}