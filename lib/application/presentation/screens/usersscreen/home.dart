import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class homepage extends StatelessWidget {
  const homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(onPressed: (){
          FirebaseAuth.instance.signOut(); 
             Navigator.pushNamedAndRemoveUntil(
                    context, '/login', (route) => false);
        },
         child: Text('logout')),
      ),
    );
  }
}