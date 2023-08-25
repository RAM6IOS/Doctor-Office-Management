import 'package:flutter/material.dart';
import 'DoctorDashboard.dart';
import 'DoctorSignUpScreen.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Doctor Login')),
      body: LoginForm(),
    );
  }
}

class LoginForm extends StatefulWidget {
  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _formKey = GlobalKey<FormState>();
  String _email = '';
  String _password = '';

  void _login() {
    if (_formKey.currentState?.validate() == true) {
      // Perform authentication here
      // You can use Firebase Authentication or any other method

      // For demonstration purposes, let's assume successful login
      Navigator.pushReplacementNamed(context, '/dashboard'); // Replace with your dashboard route
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(labelText: 'Email'),
              validator: (value) {
                if (value?.isEmpty == true) {
                  return 'Please enter your email';
                }
                return null;
              },
              onChanged: (value) {
                setState(() {
                  _email = value;
                });
              },
            ),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(labelText: 'Password'),
              validator: (value) {
                if (value?.isEmpty == true) {
                  return 'Please enter your password';
                }
                return null;
              },
              onChanged: (value) {
                setState(() {
                  _password = value;
                });
              },
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _login,
              child: Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}



// doctor_registration_screen.dart




class DoctorAuthenticationScreen extends StatefulWidget {
  @override
  _DoctorAuthenticationScreenState createState() => _DoctorAuthenticationScreenState();
}

class _DoctorAuthenticationScreenState extends State<DoctorAuthenticationScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Doctor Authentication')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextFormField(
              controller: emailController,
              decoration: InputDecoration(labelText: 'Email'),
            ),
            SizedBox(height: 16),
            TextFormField(
              controller: passwordController,
              decoration: InputDecoration(labelText: 'Password'),
              obscureText: true,
            ),
            SizedBox(height: 32),
            ElevatedButton(
              onPressed: () {
                // Implement your login logic here
                // For example: verify email and password
                // Then navigate to the doctor's dashboard
                Navigator.push(context, MaterialPageRoute(builder: (context) => DoctorDashboard() ));
              },
              child: Text('Log In'),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Navigate to the sign-up screen
                Navigator.push(context, MaterialPageRoute(builder: (context) => DoctorSignUpScreen()));
              },
              child: Text('Sign Up'),
            ),
          ],
        ),
      ),
    );
  }
}

class DoctorSignUpScreen extends StatelessWidget {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController areaController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Doctor Sign Up')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextFormField(
              controller: nameController,
              decoration: InputDecoration(labelText: 'Name'),
            ),
            SizedBox(height: 16),
            TextFormField(
              controller: emailController,
              decoration: InputDecoration(labelText: 'Email'),
            ),
            SizedBox(height: 16),
            TextFormField(
              controller: passwordController,
              decoration: InputDecoration(labelText: 'Password'),
              obscureText: true,
            ),
            SizedBox(height: 16),
            TextFormField(
              controller: areaController,
              decoration: InputDecoration(labelText: 'Area of Expertise'),
            ),
            SizedBox(height: 32),
            ElevatedButton(
              onPressed: () {
                // Implement your sign-up logic here
                // For example: create a new doctor account
                // Then navigate to the doctor's dashboard
                Navigator.push(context, MaterialPageRoute(builder: (context) => DoctorSignUpScreen()));
              },
              child: Text('Sign Up'),
            ),
          ],
        ),
      ),
    );
  }
}

