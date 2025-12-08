import 'package:flutter/material.dart';
import 'pages/login_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,  //This makes the program not show the debug banner when testing/running
      home: LoginPage(),                  //App begins on the login page
    );
  }
}

