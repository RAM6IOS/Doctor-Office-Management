
import 'package:flutter/material.dart';
import 'PatientLoginScreen.dart';
import '../patientHome/patient_home_screen.dart';
//import 'package:fluro/fluro.dart';


class PatientSignupScreen extends StatelessWidget {
    bool isPresentingFullView = false;
    TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController addressController = TextEditingController();
    TextEditingController dateofbirthController = TextEditingController();


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
                  "Create Account",
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
                  controller: nameController,
                  decoration: InputDecoration(labelText: "Username"),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.01),
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
                SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                TextFormField(
                  controller:  dateofbirthController,
                  decoration: InputDecoration(labelText: "Date of birth"),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                TextFormField(
                  controller: addressController,
                  decoration: InputDecoration(labelText: "Address"),
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
                        "Sign up",
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
                    Text("I  have an account" ,
                     style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                    ),
                    TextButton(onPressed: (){
                                           Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => PatientLoginScreen()));
                    }, child: Text("Login",
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




