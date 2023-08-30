import 'package:flutter/material.dart';
import 'patient/patientauthentication.dart/PatientSignupScreen.dart';
import 'doctor/athentication/DoctorSignUpScreen.dart';
class Home extends StatelessWidget {
  final String doctorName = "Rami";
  Home();
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenheight = MediaQuery.of(context).size.height;
    return Scaffold(
     backgroundColor: Color.fromARGB(255, 255, 254, 255),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: screenheight / 10),
               Image.asset(
                 width: screenWidth * 0.6,
                 height:100,
                'images/cardiogram.png'
                ),
              SizedBox(height: screenheight / 20),
              Text(
                'Doctors Office Management',
                style: TextStyle(fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 9, 0, 0)
                ),
              ),
             
              SizedBox(height: screenheight / 10),
              Text(
                "Choose who you are",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold
                ),
              ),
              SizedBox(height: 40),
              
              Container(
                decoration: BoxDecoration(
        color: Color.fromARGB(255, 5, 216, 240),
        borderRadius: BorderRadius.circular(10),
      ),
                width: screenWidth * 0.6,
                height: 70,
                
                 child: TextButton(

  onPressed: () {
                 Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => PatientSignupScreen()));
  },
  
  child:const Text('Patient',
  style: TextStyle(
    fontSize: 35,
    color: Colors.white),
  ),
)
    ), 
     SizedBox(height: 25), 
    Container(
                decoration: BoxDecoration(
        color: Color.fromARGB(255, 13, 166, 56),
        borderRadius: BorderRadius.circular(10),
      ),
                width: screenWidth * 0.6,
                height: 70,
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
    fontSize: 35,
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
