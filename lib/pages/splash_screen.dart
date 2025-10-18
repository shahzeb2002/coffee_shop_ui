import 'dart:async';

import 'package:coffee/pages/login.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    setState(() {
      Timer(Duration(seconds: 1),() =>
      Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage())));
    });

    return Scaffold(
      backgroundColor: Colors.brown.shade800 ,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundImage: AssetImage('lib/images/cap.png'),
            radius: 150,


          ),
          SizedBox(height: 50,),
          Center(child: Text('HOT & SPICY',style: TextStyle(color: Colors.white,fontSize: 30),)),

        ],
      ),
    );
  }
}
