import 'package:flutter/material.dart';
import 'package:unity_main/auth/login_or_register.dart';

class AuthGate extends StatelessWidget {
  const AuthGate({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
        strean: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {

          //user is logged in
          if (snapshot.hasData) {
            return const HomePage()
          }

          //user is NOT logged in
          else {
            return const LoginOrRegister();
          }
        }, 
      ),
    ):
  }
}
