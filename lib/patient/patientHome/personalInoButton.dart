import 'package:flutter/material.dart';
//import '../medicalhistories/MedicalHistoriesScreen.dart';

import '../appointments/UpcomingAppointmentsScreen.dart';
import '../patientauthentication.dart/PersonalInfoScreen.dart';


class PersonallnoButton extends StatelessWidget {

  @override
  Widget build(BuildContext context){
     return Container(
  margin:  EdgeInsets.all(10),
    child: DecoratedBox(
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 39, 171, 236).withOpacity(0.5),
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
                  child: const Text('Personal Info',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    color: Colors.black
                   
                   ),
                  ),
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
                ),

            ) ,
            )
            
          ),
 );

  }
}