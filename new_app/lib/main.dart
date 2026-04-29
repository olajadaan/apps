
import 'package:flutter/material.dart';

import 'package:new_app/screens/home/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  RouterConfig<Object>? get appRouter => null;

  @override
  Widget build(BuildContext context) {
    return 
    //  MaterialApp.router(
    //   theme: AppTheme.lightTheme,
    //   routerConfig: appRouter,
    MaterialApp(
      home: HomeScreen(),
    );
  }
}

