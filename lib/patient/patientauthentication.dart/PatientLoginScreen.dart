
import 'package:flutter/material.dart';
import 'PatientSignupScreen.dart';
import '../patient_home_screen.dart';


class PatientLoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Patient Login')),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                decoration: InputDecoration(labelText: 'Email'),
              ),
              SizedBox(height: 16),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(labelText: 'Password'),
              ),
              SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  // Implement logic for patient login
                     Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => PatientHomeScreen()));
                    // Navigator.push(context, MaterialPageRoute(builder: (context) => PatientHomeScreen()));


                },
                child: Text('Log In'),
              ),
                Text("I don't have account"),
                ElevatedButton(
                onPressed: () {
                  // Implement logic for patient login
                    //Navigator.push(context, MaterialPageRoute(builder: (context) => PatientSignupScreen()));
                     Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => PatientSignupScreen()));

                },
                child: Text('Sin up'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}