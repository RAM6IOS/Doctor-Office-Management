
import 'package:flutter/material.dart';
import 'PatientLoginScreen.dart';
import '../patient_home_screen.dart';
//import 'package:fluro/fluro.dart';


class PatientSignupScreen extends StatelessWidget {
    bool isPresentingFullView = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Patient Sign Up')),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                decoration: InputDecoration(labelText: 'Name'),
              ),
              SizedBox(height: 16),
              TextFormField(
                decoration: InputDecoration(labelText: 'Email'),
              ),
              SizedBox(height: 16),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(labelText: 'Password'),
              ),
              SizedBox(height: 16),
              TextFormField(
                decoration: InputDecoration(labelText: 'Date of Birth'),
              ),
              SizedBox(height: 16),
              TextFormField(
                decoration: InputDecoration(labelText: 'Address'),
              ),
              SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  // Implement logic for patient signup
                   Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => PatientHomeScreen()));
                },
                child: Text('Sign Up'),
              ),
              Text("already I have account"),

              ElevatedButton(
                onPressed: () {
                  
                   Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => PatientLoginScreen()));

                 
                },
                child: Text('Login'),
              ),
              
    
            ],
          ),
        ),
      ),
    );
  }
}