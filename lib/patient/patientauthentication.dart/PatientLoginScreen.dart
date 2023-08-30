
import 'package:flutter/material.dart';
import 'PatientSignupScreen.dart';
import '../patientHome/patient_home_screen.dart';


class PatientLoginScreen extends StatelessWidget {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
            return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              children: [
                Text(
                  "welcome back",
                  style: TextStyle(
                    fontSize: 27.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue
                  ),
                ),
                Text("Patient",
                style: TextStyle(
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.05),
                TextFormField(
                  controller: emailController,
                  decoration: InputDecoration(labelText: "Email"),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.01),
               
                TextFormField(
                  controller: passwordController,
                  obscureText: true,
                  decoration: InputDecoration(labelText: "Password"),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                
                Material(
                  
                  color: Color.fromARGB(255, 8, 115, 215),
                  borderRadius: BorderRadius.circular(10),
                  child: InkWell(
                    onTap: (){
                                           Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => PatientHomeScreen()));

                    },
                    child: Padding (
                      padding: EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.height * 0.02 ,horizontal: MediaQuery.of(context).size.width * 0.25),
                      child: Text(
                        "Login",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),

                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("I don't have account" ,
                     style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                    ),
                    TextButton(onPressed: (){
                                           Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => PatientSignupScreen()));

                    }, child: Text("Signup",
                      style: TextStyle(
                          color: Color.fromARGB(255, 10, 84, 233),
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                    ))
                  ],
                )

                
              ],
            ),
          ),
        ),
      ),
    );

    
  }
}

