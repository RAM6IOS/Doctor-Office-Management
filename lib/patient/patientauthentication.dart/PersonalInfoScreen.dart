import 'package:flutter/material.dart';
import '../patientauthentication.dart/PersonalInfoScreen.dart';



class PersonalInfoScreen extends StatefulWidget {
  final String name;
  final String email;
  final String dob;
  final String address;

  PersonalInfoScreen({required this.name, required this.email, required this.dob, required this.address});

  @override
  _PersonalInfoScreenState createState() => _PersonalInfoScreenState();
}

class _PersonalInfoScreenState extends State<PersonalInfoScreen> {
  late TextEditingController nameController;
  late TextEditingController emailController;
  late TextEditingController dobController;
  late TextEditingController addressController;

  @override
  void initState() {
    super.initState();
    nameController = TextEditingController(text: widget.name);
    emailController = TextEditingController(text: widget.email);
    dobController = TextEditingController(text: widget.dob);
    addressController = TextEditingController(text: widget.address);
  }

  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    dobController.dispose();
    addressController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
        return Scaffold(
          appBar: AppBar(title: Text('Patient Home')),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              children: [
                Text(
                  "Changes Info",
                  style: TextStyle(
                    fontSize: 24.0,
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
                  controller: dobController,
                  obscureText: false,
                  decoration: InputDecoration(labelText: "Date of Birth'"),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                TextFormField(
                  controller:   addressController,
                  decoration: InputDecoration(labelText: "Address"),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                
                Material(
                  
                  color: Color.fromARGB(255, 8, 115, 215),
                  borderRadius: BorderRadius.circular(10),
                  child: InkWell(
                    onTap: (){
                       String newName = nameController.text;
                String newEmail = emailController.text;
                String newDob = dobController.text;
                String newAddress = addressController.text;

                 ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Personal information updated')),
                );

                    },
                    child: Padding (
                      padding: EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.height * 0.02 ,horizontal: MediaQuery.of(context).size.width * 0.25),
                      child: Text(
                        "Save Changes",
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
