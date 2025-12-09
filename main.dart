import 'package:unity_main/brightness/light_mode.dart';
import 'package:flutter/material.dart';
import 'auth/login_or_register.dart';


void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,  //This makes the program not show the debug banner when testing/running
      home: LoginPage(),                  //App begins on the login page
      theme: lightMode,
    );
  }
}

