import 'package:flutter/material.dart';

class One extends StatelessWidget {
  const One({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreen,
      body: Center(child: Text("Wifi",style: TextStyle(
        color: Colors.white,fontSize: 50,
      ),)),
    );
  }
}