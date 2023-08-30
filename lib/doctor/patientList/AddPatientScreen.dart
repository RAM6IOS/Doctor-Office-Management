import 'package:flutter/material.dart';

class AddPatientScreen extends StatefulWidget {
  @override
  _AddPatientScreenState createState() => _AddPatientScreenState();
}

class _AddPatientScreenState extends State<AddPatientScreen> {
  // Use controllers to manage text field values
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController dobController = TextEditingController();
  final TextEditingController addressController = TextEditingController();

  @override
  void dispose() {
    // Dispose of controllers when not needed to prevent memory leaks
     Patient newPatient = Patient(
      name: nameController.text,
      email: emailController.text,
      dateOfBirth: dobController.text,
      address: addressController.text,
    );
  }

  void _addPatient() {
    // Implement logic to add the new patient to the doctor's patient list
    String name = nameController.text;
    String email = emailController.text;
    String dob = dobController.text;
    String address = addressController.text;

    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              children: [
                Text(
                  "Add New Patient",
                  style: TextStyle(
                    fontSize: 27.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue
                  ),
                ),
                

                SizedBox(height: MediaQuery.of(context).size.height * 0.05),
                TextFormField(
                  controller: nameController,
                  decoration: InputDecoration(labelText: "Name"),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                TextFormField(
                  controller: emailController,
                  decoration: InputDecoration(labelText: "Email"),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.01),
               
                TextFormField(
                  controller: dobController,
                  //obscureText: true,
                  decoration: InputDecoration(labelText: " Birth Date"),
                ),
                 SizedBox(height: MediaQuery.of(context).size.height * 0.01),
               
                TextFormField(
                  controller: addressController,
                  //obscureText: true,
                  decoration: InputDecoration(labelText: "Address"),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.02),

                
                Material(
                  color: Color.fromARGB(255, 74, 231, 110),
                  borderRadius: BorderRadius.circular(10),
                  child: InkWell(
                    onTap: (){
                      onPressed: _addPatient;
                                         
                    },
                    child: Padding (
                      padding: EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.height * 0.02 ,horizontal: MediaQuery.of(context).size.width * 0.25),
                      child: Text(
                        "Add Patient",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),

                ),
                
              ],
            ),
          ),
        ),
      ),

    );
  }
}


class Patient {
  final String name;
  final String email;
  final String dateOfBirth;
  final String address;

  Patient({
    required this.name,
    required this.email,
    required this.dateOfBirth,
    required this.address,
  });


}



