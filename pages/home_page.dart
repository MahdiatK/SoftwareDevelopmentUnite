import 'package:flutter/material.dart';
import 'package:unity_main/auth/auth_service.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  void logout() async {
    //get auth service
    final auth = AuthService();
    await auth.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
        actions: [
          // logout button
          IconButton(
            onPressed: logout, 
            icon: const Icon(Icons.logout),
          ),
        ],
      ),
    );

  }
}
