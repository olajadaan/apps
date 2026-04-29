import 'dart:async';

import 'package:flutter/material.dart';

class SplashScreen2 extends StatefulWidget {
  @override
  _SplashScreen2State createState() => _SplashScreen2State();
}

class _SplashScreen2State extends State<SplashScreen2> {
  @override
  void initState() {
    super.initState();

    // الانتقال بعد 5 ثواني
    Future.delayed(Duration(seconds: 5), () {
      // Navigator.pushReplacement(
        // context,
        // MaterialPageRoute(builder: (context) => OnboaridingScreen()),
      // );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1E3E53), // اللون الأزرق الداكن
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // شعار التطبيق في الوسط
          Expanded(
            child: Center(
              child: Image.asset(
                "asset/imges/photo_2026-04-27_10-17-43.jpg",
                width: 150,
                height: 150,
              ),
            ),
          ),
          // رمز التحميل في الأسفل
          Padding(
            padding: const EdgeInsets.only(bottom: 40),
            child: CircularProgressIndicator(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
