import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class UserProfile extends StatelessWidget {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    //throw UnimplementedError();
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Center(
          child: Text('Usuario'),
        ),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () async {
            await _firebaseAuth.signOut();
            Navigator.of(context).pushNamed('/');
          },
          child: Text('Salir', style: TextStyle(color: Colors.white)),
          color: Colors.red,
        ),
      ),
    );
  }
}
