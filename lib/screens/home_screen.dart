import 'package:firebaseauth/services/auth_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('hello'),
            FlatButton(
                onPressed: () {
                  context.read<AuthService>().signOut();
                },
                child: Text('Sign Out')
            )
          ],
        ),
      ),
    );
  }
}
