import 'package:firebase_core/firebase_core.dart';
import 'package:unity_main/auth/auth_gate.dart';
import 'package:unity_main/brightness/light_mode.dart';
import 'package:flutter/material.dart';
import 'package:unity_main/firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform); 
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,  //This makes the program not show the debug banner when testing/running
      home: AuthGate(),                  //App begins on the login page
      theme: lightMode,
    );
  }
}
