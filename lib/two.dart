import 'package:flutter/material.dart';

class Two extends StatelessWidget {
  const Two({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrange,
      body: Center(child: Text("Sunny",style: TextStyle(
        color: Colors.white,fontSize: 50,
      ),)),
    );
  }
}