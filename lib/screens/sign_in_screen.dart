
import 'package:firebaseauth/services/auth_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SignInScreen extends StatefulWidget {
  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {

  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(
          left: 25,
          right: 25
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: emailController,
              decoration: InputDecoration(
                labelText: 'Email'
              ),
            ),
            TextField(
              controller: passController,
              decoration: InputDecoration(
                labelText: 'Password'
              ),
            ),
            RaisedButton(
              child: Text('Sign Up'),
              onPressed: () {
                context.read<AuthService>().signIn(
                  email: emailController.text,
                  pass: passController.text,
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
