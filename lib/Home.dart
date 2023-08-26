import 'package:flutter/material.dart';
//import '../PatientListScreen.dart';
//import '../medicalhistories/MedicalHistoriesScreen.dart';
import 'patient/patientauthentication.dart/PatientSignupScreen.dart';
import 'athentication/DoctorSignUpScreen.dart';
import 'patient/patientauthentication.dart/PersonalInfoScreen.dart';
class Home extends StatelessWidget {
  final String doctorName = "Rami";
  Home();
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenheight = MediaQuery.of(context).size.height;
    return Scaffold(
     // appBar: AppBar(title: Text('Doctors Office Management')),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: screenheight / 20),
              Text(
                'Welcome',
                style: TextStyle(fontSize: 25),
              ),
              Text(
                'Doctors Office Management',
                style: TextStyle(fontSize: 25),
              ),
              SizedBox(height: screenheight / 10),
              Text(
                "Choose who you are",
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
              SizedBox(height: 30),
              Container(
                 //padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.2),
                decoration: BoxDecoration(
        color: Color.fromARGB(255, 13, 166, 56),
        borderRadius: BorderRadius.circular(10),
       
      ),
                width: screenWidth * 0.4,
                height: 60,
                
                 child: TextButton(

  onPressed: () {
    
    Navigator.push(
                  context,
     MaterialPageRoute(builder: (context) => DoctorSignUpScreen())
    )
     ;
  },
  
  child:const Text('Doctor',
  style: TextStyle(
    fontSize: 20,
    color: Colors.white),
  ),
)
    ),
              SizedBox(height: 20),
              Container(
                 //padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.2),
                decoration: BoxDecoration(
        color: Color.fromARGB(255, 11, 180, 199),
        borderRadius: BorderRadius.circular(10),
       
      ),
                width: screenWidth * 0.4,
                height: 60,
                
                 child: TextButton(

  onPressed: () {
    // Do something when the button is pressed.
                    //Navigator.push(context, MaterialPageRoute(builder: (context) => PatientSignupScreen()));
                 Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => PatientSignupScreen()));

  },
  
  child:const Text('Patient',
  style: TextStyle(
    fontSize: 20,
    color: Colors.white),
     
  ),
)
    ),  
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
