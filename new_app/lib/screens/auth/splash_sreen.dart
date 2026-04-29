 import 'dart:async';

// import 'package:app_devo/screens/splashscreen2.dart';
import 'package:flutter/material.dart';
import 'package:new_app/screens/auth/splash_screen2.dart';

class SplachScreeen extends StatefulWidget {
  const SplachScreeen({super.key});

  @override
  State<SplachScreeen> createState() => _SplachScreeenState();
}

class _SplachScreeenState extends State<SplachScreeen> {
  @override
  void initState() {
    super.initState();

    // الانتقال بعد 5 ثواني
    Future.delayed(Duration(seconds: 5), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => SplashScreen2()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1E3E53),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("asset/imges/photo_2026-04-27_10-17-43.jpg", width: 150, height: 150),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}

