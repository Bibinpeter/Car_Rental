import 'package:flutter/material.dart';

class Intro extends StatelessWidget {
  const 
  Intro({super.key});

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      backgroundColor: Colors.amber,
      body: Center(
        child: Text("we have to do it after login setup ",style: TextStyle(fontSize: 25 ),),
      ),
    );
  }
}