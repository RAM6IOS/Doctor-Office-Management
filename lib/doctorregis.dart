import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
//import 'package:provider/provider.dart';



class Doctor {
  final String name;
  final String email;
  final String password;
  final String areaOfExpertise;

  Doctor({required this.name, required this.email, required this.password, required this.areaOfExpertise});
}
class AuthService {
  final List<Doctor> _doctors = [];

  bool signUp(String name, String email, String password, String areaOfExpertise) {
    if (_doctors.any((doctor) => doctor.email == email)) {
      return false; // Email already exists
    }

    _doctors.add(Doctor(name: name, email: email, password: password, areaOfExpertise: areaOfExpertise));
    return true; // Sign-up successful
  }

  Doctor? login(String email, String password) {
  final doctor = _doctors.firstWhere(
    (doctor) => doctor.email == email && doctor.password == password,
    orElse: () => Doctor(name: '', email: '', password: '', areaOfExpertise: ''),
  );
  return doctor;
}


}
/*
class AuthProvider extends ChangeNotifier {
  final AuthService _authService = AuthService();
  Doctor? _loggedInDoctor;

  Doctor? get loggedInDoctor => _loggedInDoctor;

  bool signUp(String name, String email, String password, String areaOfExpertise) {
    final success = _authService.signUp(name, email, password, areaOfExpertise);
    if (success) {
      _loggedInDoctor = Doctor(name: name, email: email, password: password, areaOfExpertise: areaOfExpertise);
      notifyListeners(); // This should work correctly since AuthProvider extends ChangeNotifier
    }
    return success;
  }

  bool login(String email, String password) {
    final doctor = _authService.login(email, password);
    if (doctor != null) {
      _loggedInDoctor = doctor;
      notifyListeners(); // This should work correctly since AuthProvider extends ChangeNotifier
    }
    return doctor != null;
  }

  void logout() {
    _loggedInDoctor = null;
    notifyListeners(); // This should work correctly since AuthProvider extends ChangeNotifier
  }
}

class SignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //final authProvider = Provider.of<AuthProvider>(context, listen: false);

    return Scaffold(
      appBar: AppBar(title: Text('Doctor Sign Up')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
           // authProvider.signUp('Doctor Name', 'doctor@example.com', 'password', 'Area of Expertise');
          },
          child: Text('Sign Up'),
        ),
      ),
    );
  }
}


*/



