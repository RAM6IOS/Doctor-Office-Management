
import 'package:flutter/material.dart';
import 'PatientButton.dart';
import 'HistoriesButton.dart';
import 'AppointmentButton.dart';

class DoctorDashboard extends StatelessWidget {
  final String doctorName = "Rami";
  DoctorDashboard();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Color.fromARGB(255, 79, 236, 142),
      body: SingleChildScrollView(
        child: Column(
          children: [
        Container (
          width: double.infinity,
          height: 250,
          //color: Color.fromARGB(255, 13, 166, 56),
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
                                Text("area of expertise",
                                style: TextStyle(
                                  fontSize: 20 ,
                                  fontWeight: FontWeight.w400
                                ),
                                ),
          ]),
        ),
        Container(
           decoration: BoxDecoration(
            color: Color.fromARGB(255, 255, 255, 255).withOpacity(0.5),
            //color: Color.fromARGB(255, 13, 166, 56),
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(20),
              topLeft: Radius.circular(20),
            ),
            boxShadow: [
      BoxShadow(
        //color: Color.fromARGB(255, 255, 252, 252).withOpacity(0.5),
        color: Color.fromARGB(255, 244, 242, 242),
      ),
    ],
            //padding:EdgeInsets.all(10),
          ),
          child: Column(
            children: [
              Column(
          children: [
                                Container(
                                  padding: EdgeInsets.all(10),
                                  alignment: Alignment.centerLeft,
                                  child: Text("About Doctor",
                                style: TextStyle(
                                  fontSize: 24 ,
                                  fontWeight: FontWeight.bold,
                                  
                                ),
                                ),
                                ),
                                  Container(
                                    padding: EdgeInsets.all(10),
                                child:Text(
                                '  You are tasked with building an app-based user interface for a Doctors Office Management System. The system.',
                                style: TextStyle(
                                  height: 1.0
                                ),
                                ),
                                  )
          ],
        ),
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
         PatientButton(),
          SizedBox(height: 20),
         HistoriesButton(),
         SizedBox(height: 20),
         AppointmentButton()
          ]),
        )  
        ],)
      
      ),
    );
  }
}
//PatientButton
//HistoriesButton
//AppointmentButton


