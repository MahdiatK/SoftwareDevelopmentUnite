import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
    const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //Unity Logo
            Image.network(
              'https://i.postimg.cc/GtXyJgkf/Unity-Logo.png',
              height: 150,
            ),

            const SizedBox(height: 50),

            //Welcome back message
            Text(
              "WELCOME BACK",
              style: TextStyle(
                color: Theme.of(context).colorScheme.primary,
                fontSize: 16,
              ),
            ),

            //Username field

          ],
        ),
      ),
    );
  }
}
