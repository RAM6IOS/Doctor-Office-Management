import 'package:flutter/material.dart';
import './personalInoButton.dart';
import 'UpcomingAppointments.dart';
import './medicalHistory.dart';
import 'currentPrescriptions.dart';

class PatientHomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 11, 180, 199),
     // appBar: AppBar( ),
      body:  SingleChildScrollView(
                child: Column(
          children: [
        Container (
          width: double.infinity,
          height: 250,
          color: Color.fromARGB(255, 11, 180, 199),
          alignment: Alignment.center,
          padding: EdgeInsets.only(top: 30),
          child:const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            CircleAvatar(
                          radius: 35,
                          backgroundImage: AssetImage("images/dactor1.jpg"),
                          ),
                          Text("name",
                                style: TextStyle(
                                  fontSize: 24 ,
                                  fontWeight: FontWeight.bold
                                ),
                                ),                    
          ]),
        ),
        Container(
           decoration: BoxDecoration(
            color: Color.fromARGB(255, 255, 255, 255).withOpacity(0.5),
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(20),
              topLeft: Radius.circular(20),
            ),
            boxShadow: [
      BoxShadow(
        color: Color.fromARGB(255, 244, 242, 242),

      ),
    ],
          ),
          child: Column(
            children: [
 SizedBox(height: 20),
  Column(
          children: [
                                Container(
                                  padding: EdgeInsets.all(10),
                                  alignment: Alignment.centerLeft,
                                  child: Text("Services",
                                style: TextStyle(
                                  fontSize: 24 ,
                                  fontWeight: FontWeight.bold,
                                  
                                ),
                                ),
                                ),      
          ],
        ),
         SizedBox(height: 20),
        PersonallnoButton(),
          SizedBox(height: 20),
          UpcomingAppointments(),
         SizedBox(height: 20),
         medicalHistory(),
          SizedBox(height: 20),
          CurrentPrescriptions(),
          ]),
        )
        ],)
        ),
    );
  }
}

